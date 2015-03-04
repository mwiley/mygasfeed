# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mygasfeed/version'

Gem::Specification.new do |spec|
  spec.name          = "mygasfeed"
  spec.version       = Mygasfeed::VERSION
  spec.authors       = ["Mason Wiley"]
  spec.email         = ["masonwiley92@gmail.com"]

  spec.summary       = %q{Ruby API client for www.mygasfeed.org}
  spec.description   = %q{Provides a Ruby gem wrapper for MyGasFeed API.}
  spec.homepage      = "https://github.com/mwiley/mygasfeed"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'httparty'
  spec.add_dependency 'addressable'

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-its"
end
