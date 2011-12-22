# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "merge/version"

Gem::Specification.new do |s|
  s.name        = "merge"
  s.version     = Merge::VERSION
  s.authors     = ["David Gerber"]
  s.email       = ["dgerber@socal.rr.com"]
  s.homepage    = "http://www.gerberdata.net"
  s.summary     = "gem to merge data"
  s.description = %q{TODO: Write a gem description}

  s.required_rubygems_version = ">= 1.0.0"
  s.rubyforge_project         = "merge"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rspec", "~> 2.3"
  s.add_development_dependency "sqlite3-ruby"
  
  s.add_dependency "activerecord", "~> 3.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
