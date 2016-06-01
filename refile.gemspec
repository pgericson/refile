require "./lib/refile/version"

Gem::Specification.new do |spec|
  spec.name          = "refile"
  spec.version       = Refile::VERSION
  spec.authors       = ["Jonas Nicklas"]
  spec.email         = ["jonas.nicklas@gmail.com"]
  spec.summary       = "Simple and powerful file upload library"
  spec.homepage      = "https://github.com/refile/refile"
  spec.license       = "MIT"

  spec.files         = `git ls-files lib spec app config Readme.md`.split($/).reject { |f| f.include?("test_app") }
  spec.require_paths = %w[lib spec] # spec is used by backend gems to run their tests

  spec.required_ruby_version = ">= 2.1.0"

  spec.add_dependency "rest-client", "~> 1.8"
  # FIXME this needs to be added when version > 1.4.7 of sinatra comes out
  # sinatra > 1.4.7 requires rack version 2.0.0.rc1
  spec.add_dependency "sinatra"
  spec.add_dependency "mime-types"
end
