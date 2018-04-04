#
# Be sure to run `pod lib lint FOView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FOView'
  s.version          = '0.1.0'
  s.summary          = 'almost every application needs an onboarding page. Fast Onboarding will eliminate this need.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
	almost every application needs an onboarding page. Fast Onboarding will eliminate this need.
                       DESC

  s.homepage         = 'https://github.com/barankaraoguzzz/FastOnBoarding'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'baran.karaoguz@ogr.sakarya.edu.tr' => 'b.b.karaoguz@gmail.com' }
  s.source           = { :git => 'https://github.com/barankaraoguzzz/FastOnBoarding.git', :tag => s.version }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files  = 'Classes/*.{h,m,swift}'
  
  # s.resource_bundles = {
  #   'FOView' => ['FOView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
