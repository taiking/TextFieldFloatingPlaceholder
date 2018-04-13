Pod::Spec.new do |s|
  s.name             = 'TextFieldFloatingPlaceholder'
  s.version          = '1.0.0'
  s.summary          = 'Text Field with floating placeholder and under line changed by validation'

  s.homepage         = 'https://github.com/taiking/TextFieldFloatingPlaceholder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chocovayashi' => 'c.tsujiyan727@gmail.com' }
  s.source           = { :git => 'https://github.com/taiking/TextFieldFloatingPlaceholder.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'Sources/**/*'
end
