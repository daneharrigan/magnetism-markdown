# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "magnetism-markdown/version"

Gem::Specification.new do |s|
  s.name        = "magnetism-markdown"
  s.version     = Magnetism::Markdown::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Dane Harrigan"]
  s.email       = ["dane.harrigan@gmail.com"]
  s.homepage    = "https://github.com/daneharrigan/magnetism-markdown"
  s.summary     = %{Adds Markdown support to the Magnetism CMS}
  s.description = %{Adds Markdown support to the Magnetism CMS}

  s.rubyforge_project = "magnetism-markdown"

  #s.add_dependency 'magnetism-core', '0.0.1'
  s.add_dependency 'rdiscount', '~> 1.6.8'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
