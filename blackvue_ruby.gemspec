lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "blackvue_ruby/version"

Gem::Specification.new do |spec|
  spec.name          = "blackvue_ruby"
  spec.version       = BlackvueRuby::VERSION
  spec.authors       = ["John Tajima"]
  spec.email         = ["manjiro@gmail.com"]

  spec.summary       = %q{Blackvue Dashcam utilities for Ruby}
  spec.description   = %q{CLI utilities in Ruby for automating dl of videos from Blackvue Dashcam.}
  spec.homepage      = "https://github.com/redronin/blackvue-ruby"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/redronin/blackvue_ruby"
  spec.metadata["changelog_uri"] = "https://github.com/redronin/blackvue_ruby"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
