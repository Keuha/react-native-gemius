require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-gemius"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-gemius
                   DESC
  s.homepage     = "https://github.com/https://github.com/athome-group/react-native-gemius/react-native-gemius"
  s.license      = "Gemius has specific licence"
  s.authors      = { "atHomeGroup" => "mobileteam@athome.eu" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/https://github.com/athome-group/react-native-gemius/react-native-gemius.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true
  s.exclude_files = "ios/example"
  s.vendored_frameworks = 'ios/GemiusSDK.framework'

  s.dependency "React"

end

