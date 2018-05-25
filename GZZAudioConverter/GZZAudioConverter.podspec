Pod::Spec.new do |s|
s.name                      = 'GZZAudioConverter'
s.version                   = '1.0.0'
s.summary                   = 'A simple library to convert audio format（一个用来转换音频格式的库，支持 MP3）'
s.homepage                  = 'https://github.com/Jonzzs/GZZAudioConverter'
s.license                   = { :type => 'MIT', :file => 'LICENSE' }
s.author                    = { 'Jonzzs' => '292710547@qq.com' }
s.source                    = { :git => 'https://github.com/Jonzzs/GZZAudioConverter.git', :tag => s.version }
s.platform                  = :ios
s.ios.deployment_target     = '9.0'
s.source_files              = 'GZZAudioConverter/GZZAudioConverter/**/*.{h,m}'
s.source_files              = 'GZZAudioConverter/GZZAudioConverter/**/*.a'
s.pod_target_xcconfig       = { 'OTHER_LDFLAGS' => '"-ObjC"' }
end
