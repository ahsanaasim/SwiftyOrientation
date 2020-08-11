#
# Be sure to run `pod lib lint SwiftyOrientation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'SwiftyOrientation'
    s.version          = '0.1.1'
    s.summary          = 'SwiftyOrientation is helper for oreintation handling.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    'SwiftyOrientation is a helper for handling iOS orientation. Easy wrapup for getting and setting iOS orientation.'
    DESC
    
    s.homepage         = 'https://github.com/ahsanaasim/SwiftyOrientation'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Ahsan Aasim' => 'ahsan.aasim@gmail.com' }
    s.source           = { :git => 'https://github.com/ahsanaasim/SwiftyOrientation.git', :tag => s.version.to_s }
    s.social_media_url = 'https://www.facebook.com/ahsan.aasim.03'
    
    s.ios.deployment_target = '8.0'
    s.swift_version = '5.0 '
    s.source_files = 'Sources/**/*.swift'
    
    # s.resource_bundles = {
    #   'SwiftyOrientation' => ['SwiftyOrientation/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
