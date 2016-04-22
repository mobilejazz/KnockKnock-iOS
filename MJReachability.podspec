# Be sure to run `pod lib lint MJReachability.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name             = "MJReachability"
  s.version          = "1.0.0"
  s.summary          = "Mobile Jazz drop-in reachability solution"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Simple library written by us at Mobile Jazz to monitor reachability.
                       DESC

  s.homepage         = "https://github.com/mobilejazz/MJReachability"
  s.license          = 'MIT'
  s.author           = { "Paolo Tagliani" => "paolo@mobilejazz.com" }
  s.source           = { :git => "git@github.com:mobilejazz/MJReachability.git", :tag => s.version.to_s }
  
s.ios.deployment_target = '7.0'
s.source_files = 'MJReachability/Classes/**/*'
s.dependency 'Reachability', '~> 3.2'

end
