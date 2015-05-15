# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clearance/password_strategies/deprecated/version'

Gem::Specification.new do |spec|
  spec.name          = "clearance-deprecated_password_strategies"
  spec.version       = Clearance::PasswordStrategies::Deprecated::VERSION
  spec.authors       = ["Derek Prior"]
  spec.email         = ["derekprior@gmail.com"]
  spec.summary       = "Deprecated password strategies extracted from Clearance"
  spec.description   = "SHA1, Blowfish, and SHA1 to BCrypt migration strategies"
  spec.homepage      = "https://github.com/thoughtbot/clearance-deprecated-password-strategies"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.7"
  spec.add_development_dependency "rake", ">= 10.0"
  spec.add_development_dependency "rspec", ">= 3.1"

  spec.add_dependency "activesupport"
  spec.add_dependency "clearance", ">= 1.10"
end
