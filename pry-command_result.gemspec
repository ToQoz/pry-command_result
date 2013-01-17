# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pry-command_result/version'

Gem::Specification.new do |gem|
  gem.name          = "pry-command_result"
  gem.version       = PryCommandResult::VERSION
  gem.authors       = ["Takatoshi Matsumoto"]
  gem.email         = ["toqoz403@gmail.com"]
  gem.description   = %q{This return pry's command result and don't output it}
  gem.summary       = %q{This return pry's command result and don't output it. You can assign it to variables and process it with ruby.}
  gem.homepage      = "https://github.com/ToQoz/pry-command_result"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'pry'
end
