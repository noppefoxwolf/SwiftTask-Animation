Pod::Spec.new do |s|
  s.name             = 'SwiftTaskAnimation'
  s.version          = '0.1.0'
  s.summary          = 'Animation method chain.'
  s.description      = <<-DESC
  SwiftTaskAnimation is UIView animation helper. You able to be using method chain for animation.
                       DESC

  s.homepage         = 'https://github.com/noppefoxwolf/SwiftTask-Animation'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tomoya Hirano' => 'cromteria@gmail.com' }
  s.source           = { :git => 'https://github.com/noppefoxwolf/SwiftTask-Animation.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/noppefoxwolf'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SwiftTaskAnimation/Classes/**/*'

  s.dependency 'SwiftTask', '~> 5.0.0'
end
