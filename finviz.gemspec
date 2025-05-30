# frozen_string_literal: true

require_relative "lib/finviz/version"

Gem::Specification.new do |spec|
  spec.name          = "finviz"
  spec.version       = Finviz::VERSION
  spec.authors       = ["kvokka"]
  spec.email         = ["kvokka@yahoo.com"]

  spec.summary       = "Unofficial Finviz API."
  spec.description   = "Easy way tp access data from finviz.com."
  spec.homepage      = "https://github.com/kvokka/finviz"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kvokka/finviz"
  spec.metadata["changelog_uri"] = "https://github.com/kvokka/finviz/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "activesupport", "~> 7.2.0"
  spec.add_dependency "async-http", "~> 0.56.0"
  spec.add_dependency "dry-configurable", "~> 0.12.0"
  spec.add_dependency "nokogiri", "~> 1.16.0"
  spec.add_dependency "zeitwerk", "~> 2.6.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
