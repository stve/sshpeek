# encoding: utf-8
require File.expand_path('../lib/sshpeek/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'sshpeek'
  gem.version     = SSH::Peek::VERSION
  gem.homepage    = 'https://github.com/spagalloco/sshpeek'

  gem.author      = "Steve Agalloco"
  gem.email       = 'steve.agalloco@gmail.com'
  gem.description = %q{Simple command-line tool for displaying ssh config info.}
  gem.summary     = %q{Simple command-line tool for displaying ssh config info.}

  gem.add_dependency "net-ssh", "~> 2.2.1"
  gem.add_dependency "commander"

  gem.add_development_dependency 'rake', '~> 0.9'
  gem.add_development_dependency 'rdiscount', '~> 1.6'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'simplecov', '~> 0.5'
  gem.add_development_dependency 'yard', '~> 0.7'

  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.require_paths = ['lib']
end
