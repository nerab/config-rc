# -*- encoding: utf-8 -*-
require File.expand_path('../lib/config-rc/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["Nicholas E. Rabenau"]
  gem.email = "nerab@gmx.net"
  gem.description   = %q{Opinionated configuration library. Reads from config file, command line option and environment variable.}
  gem.summary       = %q{Opinionated config library}
  gem.homepage      = "http://github.com/nerab/config-rc"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "config-rc"
  gem.require_paths = ["lib"]
  gem.version       = ConfigRC::VERSION

  gem.add_runtime_dependency 'require_all'
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'rake'
end
