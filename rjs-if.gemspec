# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rjs/if/version'

Gem::Specification.new do |gem|
  gem.name          = "rjs-if"
  gem.version       = RJS::If::VERSION
  gem.authors       = ["Daniel Vandersluis"]
  gem.email         = ["dvandersluis@selfmgmt.com"]
  gem.description   = "Add if/unless blocks to RJS"
  gem.summary       = "Add if and unless methods to the page object when working in RJS." 
  gem.homepage      = "https://github.com/talentnest/rjs-if"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'activesupport', ['>= 3.0.0']
  gem.add_dependency 'actionpack', ['>= 3.0.0']
end
