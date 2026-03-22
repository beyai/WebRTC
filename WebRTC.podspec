Pod::Spec.new do |s|
  s.name             = 'WebRTC'
  s.version          = '146.7680.3.1'
  s.summary          = 'WebRTC binary xcframework'
  s.homepage         = 'https://webrtc.org/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'Google' => 'webrtc@google.com' }

  s.platform         = :ios, '15.0'
  # 从线上 URL 下载，而不是本地路径
  s.source           = { 
    :http => 'https://github.com/shiguredo-webrtc-build/webrtc-build/releases/download/m146.7680.3.1/WebRTC.xcframework.zip',
    :sha256 => 'a1da8db1d12287cd71d4d1783569bf95f5fc03864fde889ea8cb1f6ad3d77b24'  # 可选，用于验证完整性
  }
  s.vendored_frameworks = 'WebRTC.xcframework'

  # 下载后自动解压
  s.prepare_command = 'unzip -q WebRTC.xcframework.zip'
end