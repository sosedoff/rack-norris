require File.expand_path("../lib/rack/norris/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "rack-norris"
  s.version     = Rack::Norris::VERSION
  s.summary     = "Chuck Norris jokes in X-Chuck-Norris header"
  s.description = "Meh"
  s.homepage    = "http://github.com/sosedoff/rack-norris"
  s.authors     = ["Dan Sosedoff"]
  s.email       = ["dan.sosedoff@gmail.com"]

  s.add_runtime_dependency "rack", ">= 1.0"
  s.add_development_dependency "rake", "~> 10"

  s.files              = `git ls-files`.split("\n")
  s.test_files         = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables        = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  s.require_paths      = ["lib"]
end