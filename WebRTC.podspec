Pod::Spec.new do |s|
  s.name             = 'WebRTC'
  s.version          = '123.0.0'
  s.summary          = 'WebRTC binary xcframework'
  s.homepage         = 'https://webrtc.org/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'Google' => 'webrtc@google.com' }

  s.platform         = :ios, '15.0'
  s.source           = { :path => '.' }
  s.vendored_frameworks = 'WebRTC.xcframework'
end
