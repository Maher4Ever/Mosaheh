# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mosaheh/version"

Gem::Specification.new do |s|
  s.name        = "mosaheh"
  s.version     = Mosaheh::VERSION
  s.authors     = ["Maher Sallam"]
  s.email       = ["maher@sallam.me"]
  s.homepage    = ""
  s.summary     = %q{An Arabic text re-encoder from latin1 (cp1252) to Arabic (UTF-8).}
  s.description = %q{Mosaheh repairs UTF-8 Arabic (U+0600 - U+06FF) text which has been mistakenly saved as single-byte latin1 encoding (cp1252). The biggest usecase for it is to repair Arabic data stored in MySql databases with the wrong encoding.}

  s.rubyforge_project = "mosaheh"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
end
