# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faststrap/version'

Gem::Specification.new do |spec|
  spec.name        = 'faststrap'
  spec.version     = Faststrap::VERSION
  spec.date        = '2015-04-29'
  spec.summary     = "setup and bootstrap your mac OS environment for development."
  spec.description = "setup and bootstrap your mac OS environment for development."
  spec.authors     = ["Thiago Lioy"]
  spec.email       = 'lioyufrj@gmail.com'
  spec.homepage    = 'https://github.com/thiagolioy/faststrap'
  spec.license     = 'MIT'

  spec.required_ruby_version = '>= 2.0.0'

  spec.files       =  Dir["lib/**/*"] + %w{ README.md LICENSE }

  spec.executables << 'faststrap'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # Development only
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
  spec.add_development_dependency 'rubocop', '~> 0.29'

end
