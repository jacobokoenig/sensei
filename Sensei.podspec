Pod::Spec.new do |s|
  s.name             = 'Sensei'
  s.version          = '0.1.0'
  s.summary          = 'A suite of extensions and helper methods to make life in Swift easier.'
 
  s.description      = <<-DESC
A suite of extensions and helper methods to make life in Swift easier.
                       DESC
 
  s.homepage         = 'https://github.com/jacobokoenig/sensei'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jacobo Koenig' => 'jacobokoenig@gmail.com' }
  s.source           = { :git => 'https://github.com/jacobokoenig/sensei.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'Sensei/*.{swift}'
 
  s.resources = 'Sensei/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}'
end