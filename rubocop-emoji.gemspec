# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop/emoji/version'

Gem::Specification.new do |spec|
  spec.name          = "rubocop-emoji"
  spec.version       = Rubocop::Emoji::VERSION
  spec.authors       = ["Klaus Hartl"]
  spec.email         = ["klaus.hartl@gmail.com"]

  spec.summary       = %q{RuboCop progress formatter displaying emoji hearts.}
  spec.description   = %q{RuboCop formatter displaying green hearts for files with no offenses and broken red hearts for files with problems in them.}
  spec.homepage      = "https://github.com/carhartl/rubocop-emoji"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 0.3"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
