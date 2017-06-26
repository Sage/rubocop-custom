# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubocop/custom/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-custom"
  spec.version       = Rubocop::Custom::VERSION
  spec.authors       = ["Christoph Petschnig"]
  spec.email         = ["christoph.petschnig@sage.com"]

  spec.summary       = %q{Custom Cops for Rubocop}
  spec.description   = %q{Collection of custom checks for Rubocop.}
  spec.homepage      = "https://github.com/Sage"
  spec.license       = 'Apache 2.0'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end