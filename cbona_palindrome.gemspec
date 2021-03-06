require_relative 'lib/cbona_palindrome/version'

Gem::Specification.new do |spec|
  spec.name          = "cbona_palindrome"
  spec.version       = CbonaPalindrome::VERSION
  spec.authors       = ["cbonamin"]
  spec.email         = ["cbonamin@gmail.com"]

  spec.summary       = %q{Palindrome detector}
  spec.description   = %q{Learn Enough palindrome detector}
  spec.homepage      = "https://github.com/cbonamin/cbona_palindrome.git"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cbonamin/cbona_palindrome.git"
  spec.metadata["changelog_uri"] = "https://github.com/cbonamin/cbona_palindrome/edit/master/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
