# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gitorinox/version'

Gem::Specification.new do |spec|
  spec.name          = "gitorinox"
  spec.version       = Gitorinox::VERSION
  spec.authors       = ["jvillarejo"]
  spec.email         = ["arzivian87@gmail.com"]
  spec.summary       = %q{Your command line tool for github}
  spec.description   = %q{You can list your repositories, and unwatch them}
  spec.homepage      = "https://github.com/jvillarejo/gitorinox"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ['gitorinox']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "clamp", "~> 0.6.4"
  spec.add_dependency 'github_api', "~> 0.12.3"
end
