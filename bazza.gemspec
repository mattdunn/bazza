# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bazza/version"

Gem::Specification.new do |s|
  s.name        = "bazza"
  s.version     = Bazza::VERSION
  s.authors     = ["mattdunn"]
  s.email       = ["contact@mattonsoftware.com"]
  s.homepage    = "https://github.com/mattdunn/bazza"
  s.summary     = "bazza - the builder"
  s.description = ""

  s.rubyforge_project = "bazza"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
