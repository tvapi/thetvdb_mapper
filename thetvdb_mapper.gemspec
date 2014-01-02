# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thetvdb_mapper/version'

Gem::Specification.new do |spec|
  spec.name          = 'thetvdb_mapper'
  spec.version       = ThetvdbMapper::VERSION
  spec.authors       = ['Krzysztof Wawer']
  spec.email         = ['krzysztof.wawer@gmail.com']
  spec.description   = %q{Mapping and normalizing data fetched by thetvdb_api}
  spec.summary       = %q{Mapping and normalizing data from thetvdb.com}
  spec.homepage      = %q{http://github.com/wafcio/thetvdb_mapper}
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'thetvdb_api', '~> 0.2.2'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 2.14.1'
  spec.add_development_dependency 'coveralls', '~> 0.7'
end
