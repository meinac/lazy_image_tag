# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lazy_image_tag/version'

Gem::Specification.new do |spec|
  spec.name          = "lazy_image_tag"
  spec.version       = LazyImageTag::VERSION
  spec.authors       = ["Mehmet Emin İNAÇ"]
  spec.email         = ["mehmetemininac@gmail.com"]
  spec.description   = %q{This gem gives you to render lazy image ability}
  spec.summary       = %q{Creates new helper method which name is lazy_image_tag}
  spec.homepage      = "http://github.com/meinac/lazy_image_tag"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3.1.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
