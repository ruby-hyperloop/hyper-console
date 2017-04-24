# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hyperloop/console/version'

Gem::Specification.new do |spec|
  spec.name          = "hyper-console"
  spec.version       = Hyperloop::Console::VERSION
  spec.authors       = ["catmando"]
  spec.email         = ["mitch@catprint.com"]

  spec.summary       = %q{IRB style console for Hyperloop applications.}
  spec.homepage      = "http://ruby-hyperloop.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'hyper-operation'
  spec.add_dependency 'hyper-store', ">= 0.2.3"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'opal'
  spec.add_development_dependency 'opal-browser'
  spec.add_development_dependency 'rails'
  spec.add_development_dependency 'opal-rails', '>= 0.8.1'
  spec.add_development_dependency 'hyper-component'
  spec.add_development_dependency 'hyper-operation'
  spec.add_development_dependency 'hyper-store'
  spec.add_development_dependency 'hyperloop-config'
  spec.add_development_dependency 'opal-jquery'
  spec.add_development_dependency 'uglifier'
end
