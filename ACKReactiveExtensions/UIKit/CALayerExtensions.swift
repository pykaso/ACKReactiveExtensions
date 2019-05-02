//
//  CALayerExtensions.swift
//  UIKit
//
//  Created by Jakub Olejník on 06/02/2018.
//

import UIKit
import ReactiveSwift

extension Reactive where Base: CALayer {
    /// Binding that represents `borderWidth`
    @available(*, deprecated, message: "User [\\.borderWidth] instead")
    public var borderWidth: BindingTarget<CGFloat> {
        return self[\.borderWidth]
    }
    
    /// Binding that represents `borderColor`
    @available(*, deprecated, message: "User [\\.borderColor] instead")
    public var borderColor: BindingTarget<CGColor?> {
        return self[\.borderColor]
    }
    
    /// Binding that represents `cornerRadius`
    @available(*, deprecated, message: "User [\\.cornerRadius] instead")
    public var cornerRadius: BindingTarget<CGFloat> {
        return self[\.cornerRadius]
    }
}
