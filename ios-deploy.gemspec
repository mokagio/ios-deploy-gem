# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ios-deploy/version'

Gem::Specification.new do |spec|
  spec.name          = "ios-deploy"
  spec.version       = IosDeploy::VERSION
  spec.authors       = ["Giovanni Lodi"]
  spec.email         = ["giovanni.lodi42@gmail.com"]
  spec.summary       = %q{Mirror of the node module ios-deploy}
  spec.description   = %q{launch iOS apps iOS devices from the command line (Xcode 6)\nInstall and debug iOS apps without using Xcode. Designed to work on un-jailbroken devices.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
