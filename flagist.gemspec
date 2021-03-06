# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flagist/version'

Gem::Specification.new do |spec|
  spec.name          = "flagist"
  spec.version       = Flagist::VERSION
  spec.authors       = ["shun-fix9"]
  spec.email         = ["shun.fix9@gmail.com"]

  spec.summary       = %q{flag addon to active record}
  spec.description   = %q{like enum, my flag addon}
  spec.homepage      = "https://github.com/sanzen-sekai/flagist"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "travis", "~> 1.8"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_development_dependency "activemodel", "~> 4.0"
end
