//
//  Util.swift
//  ReactiveTwitterSearch
//
//  Created by Colin Eberhardt on 10/05/2015.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

import UIKit
import ReactiveSwift
import ReactiveCocoa
import Result

extension Reactive where Base: UIView {
    /// Binding that represents tintColor
    public var tintColor: BindingTarget<UIColor?> {
        return makeBindingTarget { $0.tintColor = $1 }
    }
}
extension Reactive where Base: CALayer {
    /// Binding that represents borderWidth
    public var borderWidth: BindingTarget<CGFloat> {
        return makeBindingTarget { $0.borderWidth = $1 }
    }
    
    /// Binding that represents borderColor
    public var borderColor: BindingTarget<CGColor> {
        return makeBindingTarget { $0.borderColor = $1 }
    }
}

extension Reactive where Base: UINavigationItem {
    /// Binding that represents title
    public var title: BindingTarget<String?> {
        return makeBindingTarget { $0.title = $1 }
    }
}

extension Reactive where Base: UITextField {
    /// Binding that represents textColor
    public var textColor: BindingTarget<UIColor?> {
        return makeBindingTarget { $0.textColor = $1 }
    }
    
    /**
     * Property if field contains valid email
     * 
     * Note that this wont fire on programmatic change of .text
     */
    public var containsValidEmail: Property<Bool> {
        return Property(initial: base.text, then: continuousTextValues)
            .map { $0.map { $0.isValidEmail } ?? false }
    }
}

//we have an `containsValidEmail` extension on UITextField, which used to contained this logic. I refactored it out into a String extension, but theres nothing "reactive" about it, so its fileprivate.
extension String {
    fileprivate var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}

