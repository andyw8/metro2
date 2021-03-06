
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "metro2/version"

Gem::Specification.new do |spec|
  spec.name          = "metro2"
  spec.version       = Metro2::VERSION
  spec.authors       = ["Andy Waite"]
  spec.email         = ["andyw8@users.noreply.github.com"]

  spec.summary       = %q{Metro2}
  spec.description   = %q{Metro2}
  spec.homepage      = "https://github.com/andyw8/metro2"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
