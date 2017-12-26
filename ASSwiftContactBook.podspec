Pod::Spec.new do |s|
  s.name                        = "ASSwiftContactBook"
  s.version                     = '1.1.2'
  s.summary                     = "Custom Contact Book picker written in Swift 3.0"
  s.homepage                    = 'http://twitter.com/anton__dev'
  s.social_media_url            = 'http://twitter.com/anton__dev'
  s.documentation_url           = 'http://twitter.com/anton__dev'
  s.author                      = { 'Anton Stremovskiy'   => 'perlik@gmail.com' }
  s.license                     = { :type => "MIT", :file => "LICENSE" }
  s.source                      = { :git  => 'https://github.com/softermii/ASSwiftContactBook.git', tag: "v#{s.version}" }
  s.platform                    = :ios, '9.0'
  s.requires_arc                = true
  s.source_files                = 'Pods/**/*.{swift,xib,xcassets}'
  s.resources			= 'Pods/**/*.{xib,xcassets}'
  s.ios.resource_bundle 	= { 'Resources' => ['Pods/**/*.xcassets'] }  
  s.ios.frameworks              = 'UIKit', 'Contacts'
  s.ios.deployment_target       = '9.0'
end
