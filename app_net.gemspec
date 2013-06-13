# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'app_net/version'

Gem::Specification.new do |spec|
  spec.name          = "app_net"
  spec.version       = AppNet::VERSION
  spec.authors       = ["Robert Boone"]
  spec.email         = ["robert@rlb3.com"]
  spec.description   = %q{Consume the public feed and print out a simple list of posts displaying username & message.}
  spec.summary       = %q{Consume the public feed and print out a simple list of posts displaying username & message.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rest_client'
  spec.add_runtime_dependency 'json'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
