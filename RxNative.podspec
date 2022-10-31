#
# Be sure to run `pod lib lint RxNative.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxNative'
  s.version          = '0.1.0'
  s.summary          = 'RxNative is for Hybride App which need native function, such as location, photo.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  RxNative is for Hybride App which need native function, such as location, photo.
                       DESC

  s.homepage         = 'https://github.com/lhp3851@163.com/RxNative'
  # s.screenshots    = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alvin' => 'lhp3851@163.com' }
  s.source           = { :git => 'https://github.com/lhp3851@163.com/RxNative.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  
  # s.resource_bundles = {
  #   'RxNative' => ['RxNative/Assets/*.png']
  # }

  # s.source_files = 'RxNative/Classes/**/*'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
  s.subspec 'Core' do |sub|
      sub.dependency 'RxSwift' , '~> 6.5'
      sub.dependency 'RxCocoa', '~> 6.5'
  end
  
  s.subspec 'Contacts' do |sub|
      sub.frameworks = 'Contacts'
      sub.source_files = 'RxNative/Classes/Contacts/**/*'
  end
  
  s.subspec 'Files' do |sub|
    sub.source_files = 'RxNative/Classes/Files/**/*'
  end
  
  s.subspec 'Location' do |sub|
      sub.source_files = 'RxNative/Classes/Location/**/*'
  end
  
  s.subspec 'Multimedia' do |sub|
      sub.source_files = 'RxNative/Classes/Multimedia/**/*'
  end
  
  s.subspec 'Networking' do |sub|
      sub.dependency 'RxNative/Core'
      sub.dependency 'Moya/RxSwift'
      sub.dependency 'HandyJSON'
      sub.source_files = 'RxNative/Classes/Networking/**/*'
  end
  
  s.subspec 'WebView' do |sub|
      sub.frameworks = 'WebKit'
      sub.source_files = 'RxNative/Classes/WebView/**/*'
  end
  
end
