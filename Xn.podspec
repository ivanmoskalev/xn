Pod::Spec.new do |s|
  s.name             = 'Xn'
  s.version          = '0.1.0'
  s.summary          = 'Useful Swift Extensions.'

  s.description      = <<-DESC
Useful extensions and algorithms for Swift. No dependencies on Foundation or other iOS/macOS frameworks. Use at your own risk!
                       DESC

  s.homepage         = 'https://github.com/ivanmoskalev/xn'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ivan Moskalev' => 'ivan.moskalev@gmail.com' }
  s.source           = { :git => 'https://github.com/ivanmoskalev/xn.git', :tag => s.version.to_s }
  s.swift_version         = '5.3'
  s.osx.deployment_target = '10.13'
  s.source_files          = 'Sources/Xn/**/*.swift'
  s.requires_arc          = true
end
