# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard/jessie/version"

Gem::Specification.new do |s|
  s.name        = "guard-jessie"
  s.version     = Guard::JessieVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Michał Taszycki"]
  s.email       = ["mtaszycki@gmail.com"]
  s.homepage    = "https://github.com/mehowte/guard-jessie"
  s.summary     = %q{Guard gem for jessie}
  s.description = %q{Guard::Jessie automatically runs your jasmine specs through jessie driver}

  s.rubyforge_project = "guard-jessie"

  s.add_dependency 'guard', '>= 0.4.0'

  s.add_development_dependency 'bundler', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.6'
  s.add_development_dependency 'guard-bundler'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'rake'


  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
