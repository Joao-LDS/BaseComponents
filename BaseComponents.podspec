Pod::Spec.new do |s|
  s.name = 'BaseComponents'
  s.version = '0.7'
  s.license = 'MIT'
  s.summary = 'Simple Design System'
  s.homepage = 'https://github.com/Joao-LDS/BaseComponents'
  s.author = { "Joao-LDS" => "joao_l_d_s@hotmail.com" }
  s.source = { :git => 'https://github.com/Joao-LDS/BaseComponents.git', :tag => s.version }
  s.documentation_url = s.homepage

  s.ios.deployment_target = '15.0'

  s.swift_versions = ['5']

  s.source_files = '*.swift'
end