# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'multilevel_sidekiq/version'

Gem::Specification.new do |spec|
  spec.name          = 'multilevel_sidekiq'
  spec.version       = MultilevelSidekiq::VERSION
  spec.authors       = ['Inbeom Hwang']
  spec.email         = ['hwanginbeom@gmail.com']
  spec.description   = %q{Capistrano recipe for running multiple processes with multiple configurations}
  spec.summary       = %q{Run sidekiq with multiple configuration}
  spec.homepage      = 'https://github.com/inbeom/multilevel_sidekiq'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
