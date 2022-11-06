# frozen_string_literal: true

require_relative "lib/tmart134_palindrome/version"

Gem::Specification.new do |spec|
  spec.name = "tmart134_palindrome"
  spec.version = Tmart134Palindrome::VERSION
  spec.authors = ["tmart134"]
  spec.email = ["martinltracey@gmail.com"]

  spec.summary = %q(Palindrome detector)
  spec.description = %q(Learn enough ruby to be dangerous)
  spec.homepage = "https://github.com/tmart134/tmart134_palindrome"
  spec.required_ruby_version = ">= 2.6.0"


  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes"
  end

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "bundler", "~> 2.3.10"
  spec.add_dependency "rake", "~> 13.0"
  spec.add_dependency "minitest", "~> 5.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
