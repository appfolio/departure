# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'departure/version'

Gem::Specification.new do |spec|
  spec.name          = 'departure'
  spec.version       = Departure::VERSION
  spec.authors       = ['Jonathan Easterman', 'Ilya Zayats', 'Pau Pérez', 'Fran Casas', 'Jorge Morante', 'Enrico Stano', 'Adrian Serafin', 'Kirk Haines', 'Guillermo Iguaran']
  spec.email         = ['jonathan.easterman@appfolio.com', 'ilya.zayats@redbooth.com', 'pau.perez@redbooth.com', 'nflamel@gmail.com', 'jorge.morante@redbooth.com', 'adrian@softmad.pl', 'wyhaines@gmail.com', 'guilleiguaran@gmail.com']

  spec.summary       = %q(pt-online-schema-change runner for ActiveRecord migrations)
  spec.description   = %q(Execute your ActiveRecord migrations with Percona's pt-online-schema-change. Formerly known as Percona Migrator.)
  spec.homepage      = 'https://github.com/departurerb/departure'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.metadata['allowed_push_host'] = 'https://gemini.atl.appfolio.net'

  spec.add_runtime_dependency 'railties', '~> 5.2.0'
  spec.add_runtime_dependency 'activerecord', '~> 5.2.0'
  spec.add_runtime_dependency 'mysql2', '>= 0.4.0', '<= 0.5.2'

  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.4', '>= 3.4.0'
  spec.add_development_dependency 'rspec-its', '~> 1.2'
  spec.add_development_dependency 'byebug', '~> 8.2', '>= 8.2.1'
  spec.add_development_dependency 'climate_control', '~> 0.0.3'
end
