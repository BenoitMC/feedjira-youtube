lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "feedjira/youtube/version"

Gem::Specification.new do |spec|
  spec.name          = "feedjira-youtube"
  spec.version       = Feedjira::Youtube::VERSION
  spec.authors       = ["Benoit MARTIN-CHAVE"]
  spec.email         = ["benoit@martin-chave.ch"]

  spec.summary       = "Alternative Youtube parser for Feedjira."
  spec.homepage      = "https://github.com/BenoitMC/feedjira-youtube"
  spec.license       = "MIT"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ["lib"]

  spec.add_dependency "feedjira"
end
