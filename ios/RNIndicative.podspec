require 'json'
package = JSON.parse(File.read('../package.json'))

Pod::Spec.new do |s|
  s.name         = "RNIndicative"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RNIndicative
                   DESC
  s.homepage     = "https://github.com/yoman07/react-native-indicative#readme"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/yoman07/react-native-indicative", :tag => "master" }
  s.source_files  = "RNIndicativeManager.{h,m}", "RNIndicative.swift", "Indicative/**/*.{h,m}", "RNIndicative-Bridging-Header.h"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end
