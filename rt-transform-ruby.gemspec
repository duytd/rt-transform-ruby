# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rt/version'

Gem::Specification.new do |spec|
  spec.name          = "rt-transform-ruby"
  spec.version       = Rt::VERSION
  spec.authors       = ["Trinh Duc Duy"]
  spec.email         = ["duytd.hanu@gmail.com"]

  spec.summary       = %q{Tranform React Templates content from Ruby}
  spec.description   = %q{Tranform React Templates content from Ruby}
  spec.homepage      = "https://github.com/duytd/rt-transform-ruby"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 13.2.1"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "execjs"
end
