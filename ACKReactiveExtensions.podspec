Pod::Spec.new do |s|
  s.name             = 'ACKReactiveExtensions'
  s.version          = '4.0.0'
  s.summary          = 'Useful extensions for ReactiveCocoa.'
  s.description      = <<-DESC
  Use ReactiveCocoa with various iOS components.
                       DESC
  s.homepage         = 'https://github.com/AckeeCZ/ACKReactiveExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ackee' => 'info@ackee.cz' }
  s.source           = { :git => 'https://github.com/AckeeCZ/ACKReactiveExtensions.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.3'
  s.swift_version = '4.2'
  s.default_subspec = 'Core','UIKit'
  s.dependency 'ReactiveCocoa', '~> 8.0'

  s.subspec 'Core' do |core|
    core.source_files = 'ACKReactiveExtensions/Core/*.swift'
  end

  s.subspec 'UIKit' do |uikit|
    uikit.dependency 'ACKReactiveExtensions/Core'
    uikit.source_files = 'ACKReactiveExtensions/UIKit/*.swift'
  end

  s.subspec 'Argo' do |argo|
    argo.dependency 'ACKReactiveExtensions/Core'
    argo.dependency 'Argo', '~> 4.1'
    argo.source_files = 'ACKReactiveExtensions/Argo/*.swift'
  end

  s.subspec 'Reachability' do |reachability|
    reachability.dependency 'ACKReactiveExtensions/Core'
    reachability.dependency 'ReachabilitySwift', '~> 4.1'
    reachability.source_files = 'ACKReactiveExtensions/Reachability/*.swift'
  end

  s.subspec 'SDWebImage' do |sdwebimage|
    sdwebimage.dependency 'ACKReactiveExtensions/Core'
    sdwebimage.dependency 'SDWebImage', '~> 4.0'
    sdwebimage.source_files = 'ACKReactiveExtensions/SDWebImage/*.swift'
  end

  s.subspec 'WebKit' do |webkit|
    webkit.dependency 'ACKReactiveExtensions/Core'
    webkit.source_files = 'ACKReactiveExtensions/WebKit/*.swift'
  end

  s.subspec 'Realm' do |realm|
    realm.dependency 'ACKReactiveExtensions/Core'
    realm.dependency 'RealmSwift', '~> 3.0'
    realm.source_files = 'ACKReactiveExtensions/Realm/*.swift'
  end

  s.subspec 'Marshal' do |marshal|
    marshal.dependency 'ACKReactiveExtensions/Core'
    marshal.dependency 'Marshal', '~> 1.2'
    marshal.source_files = 'ACKReactiveExtensions/Marshal/*.swift'
  end
  
  s.subspec 'AlamofireImage' do |marshal|
      marshal.dependency 'ACKReactiveExtensions/Core'
      marshal.dependency 'AlamofireImage', '~> 3.3'
      marshal.source_files = 'ACKReactiveExtensions/AlamofireImage/*.swift'
  end

end
