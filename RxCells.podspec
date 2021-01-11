Pod::Spec.new do |spec|
  spec.name         = 'RxCells'
  spec.version      = '1.0.0'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage     = 'https://github.com/pikciu/RxCells'
  spec.authors      = { 'Tomasz Pikć' => 'tomasz.pikc@gmail.com' }
  spec.summary      = 'Fast and easy binding'
  spec.source       = { :git => 'https://github.com/pikciu/RxCells.git', :tag => spec.version.to_s }
  spec.source_files = 'RxCells/Sources/*.swift'
  spec.framework    = 'UIKit'
  spec.ios.deployment_target  = '12.0'
  spec.swift_version          = '5.3'
  spec.dependency 'RxSwift', '~> 6.0'
  spec.dependency 'RxCocoa', '~> 6.0'
  spec.dependency 'Reusable', '~> 4.1'
end