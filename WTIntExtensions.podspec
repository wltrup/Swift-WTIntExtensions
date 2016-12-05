Pod::Spec.new do |s|
  s.name             = 'WTIntExtensions'
  s.version          = '1.0.2'
  s.summary          = 'WTIntExtensions adds methods to generate pseudo-random integer values.'
  s.description      = <<-DESC
    WTIntExtensions adds methods to generate uniformly-distributed pseudo-random integer values.
                       DESC
  s.homepage         = 'https://github.com/wltrup/Swift-WTIntExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Wagner Truppel' => 'trupwl@gmail.com' }
  s.source           = { :git => 'https://github.com/wltrup/Swift-WTIntExtensions.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'WTIntExtensions/Classes/**/*'
end
