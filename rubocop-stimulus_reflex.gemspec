# frozen_string_literal: true

require_relative "lib/rubocop/stimulus_reflex/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-stimulus_reflex"
  spec.version       = Rubocop::StimulusReflex::VERSION
  spec.authors       = ["Marco Roth"]
  spec.email         = ["marco.roth@hey.com"]

  spec.summary       = "Code style checking for StimulusReflex"
  spec.description   = "Code style checking for StimulusReflex"
  spec.homepage      = "https://github.com/marcoroth/rubocop-stimulus_reflex"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/marcoroth/rubocop-stimulus_reflex"
  spec.metadata["changelog_uri"] = "https://github.com/marcoroth/rubocop-stimulus_reflex/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rubocop", "~> 1.0"
  spec.add_runtime_dependency "rubocop-ast", ">= 1.1.0"
  spec.add_runtime_dependency "rubocop-cable_ready", "~> 0.1"

  spec.add_development_dependency "rake"
end
