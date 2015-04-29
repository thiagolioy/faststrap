Gem::Specification.new do |spec|
  spec.name        = 'faststrap'
  spec.version     = '0.0.2'
  spec.date        = '2015-04-29'
  spec.summary     = "setup and bootstrap your mac OS environment for development."
  spec.description = "setup and bootstrap your mac OS environment for development."
  spec.authors     = ["Thiago Lioy"]
  spec.email       = 'lioyufrj@gmail.com'
  spec.files       =  Dir["lib/**/*"] + %w{ README.md LICENSE }
  spec.homepage    = 'https://github.com/thiagolioy/faststrap'
  spec.license     = 'MIT'
  spec.required_ruby_version = '>= 2.0.0'
  spec.executables << 'faststrap'
end
