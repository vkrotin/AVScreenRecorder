
Pod::Spec.new do |s|

  s.name             = 'AVScreenRecorder'
  s.version          = '0.1.7'
  s.summary          = 'iOS library for screen recording app. Record any actions in the app, the option to save on device or share it.'
  s.homepage         = 'https://github.com/vkrotin/AVScreenRecorder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aleksey Anisimov' => 'vkrotin.ios@gmail.com' }
  s.source           = { :git => 'https://github.com/vkrotin/AVScreenRecorder.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'

  s.vendored_frameworks = 'AVScreenRecorder/AVScreenRecorder.framework', 'CRUploadLib/CRUploadLib.xcframework'
  s.frameworks = 'Foundation'
  s.requires_arc = true


  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
