Pod::Spec.new do |spec|
  spec.name         = 'RxCells'
  spec.version      = '0.1.0'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage     = 'https://github.com/pikciu/RxCells'
  spec.authors      = { 'Tomasz Pikć' => 'tomasz.pikc@gmail.com' }
  spec.summary      = 'Easy and fast binding'
  spec.source       = { :git => 'https://github.com/pikciu/RxCells.git', :tag => spec.version.to_s }
  spec.source_files = 'RxCells/Sources/*.swift'
  spec.framework    = 'UIKit'
  spec.ios.deployment_target  = '8.0'
  spec.dependency 'RxSwift', '~> 3.4'
  spec.dependency 'RxCocoa', '~> 3.4'
  spec.dependency 'Reusable', '~> 4.0'
end