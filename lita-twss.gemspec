Gem::Specification.new do |spec|
  spec.name          = "lita-twss"
  spec.version       = "0.0.1"
  spec.authors       = ["Andrew Korzhuev"]
  spec.email         = ["korzhuev@andrusha.me"]
  spec.description   = %q{Replies with TWSS when appropriate}
  spec.summary       = %q{Replies with TWSS when appropriate}
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.0"
  spec.add_runtime_dependency "twss"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "fakeredis"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "byebug"
end
