#
# Be sure to run `pod lib lint AlertController.podspec' to ensure this is a
# valid spec before submitting./Users/Marcel/Projekte/TestCocoaPods2/Podfile
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AlertController"
  s.version          = "0.1.0"
  s.summary          = "iOS AlertController with different BlurStyles -> ExtraLight, Light, Dark."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "iOS AlertController with different BlurStyles -> ExtraLight, Light, Dark. In addition to this you can use it with ActionSheet style."

  s.homepage         = "https://github.com/Spriter/AlertController.git"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Marcel Dittmann" => "marceldittmann@gmx.de" }
  s.source           = { :git => "https://github.com/Spriter/AlertController.git", :tag => "v0.1.0" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'AlertController' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
