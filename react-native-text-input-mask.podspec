require 'json'

package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name         = "react-native-text-input-mask"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/react-native-community/react-native-text-input-mask.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'React-Core'
end
