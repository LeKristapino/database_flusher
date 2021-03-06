# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'database_flusher/version'

Gem::Specification.new do |spec|
  spec.name          = 'database_flusher'
  spec.version       = DatabaseFlusher::VERSION
  spec.authors       = ['Edgars Beigarts']
  spec.email         = ['edgars.beigarts@gmail.com']

  spec.summary       = %q{super-fast database cleaner}
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/ebeigarts/database_flusher'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.2.1'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'byebug'

  spec.add_development_dependency 'activerecord'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'mysql2'
  spec.add_development_dependency 'pg'

  spec.add_development_dependency 'mongoid'
end
