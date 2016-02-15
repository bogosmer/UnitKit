Pod::Spec.new do |s|
  s.name = 'UnitKit'
  s.version = '0.1'
  s.license = 'MIT'
  s.summary = 'Convenient handling of units of measurement'
  s.homepage = 'https://github.com/UnitKit/UnitKit'
  s.authors = { 'Bo Gosmer' => 'bogosmer@gmail.com' }
  s.source = { :git => 'https://github.com/UnitKit/UnitKit.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'Source/*.swift'
end
