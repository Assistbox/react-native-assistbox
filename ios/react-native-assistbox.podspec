require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "11.0"

  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"${SRCROOT}/.."/**' }

  s.source       = { :git => "https://github.com/AssistBox/react-native-assistbox.git", :tag => "v#{s.version}" }
  s.source_files  = "**/*.{h,m}"

  s.dependency 'React-Core'
  s.dependency 'Socket.IO-Client-Swift', '~> 16.0.1'
  s.dependency 'SwiftStomp'
end
