# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "awesome-share-buttons/lib/awesome_share_buttons/version"

Gem::Specification.new do |s|
  s.name        = "awesome-share-buttons"
  s.version     = SocialShareButton::VERSION
  s.authors     = ["Evan Sobkowicz"]
  s.email       = ["evan@esobko.com"]
  s.homepage    = "http://github.com/evansobkowicz/awesome-share-buttons"
  s.summary     = %q{Add Font-Awesome social share buttons to your Rails app.}
  s.description = %q{Add Font-Awesome social share buttons to your Rails app.}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- {bin}/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]


  # specify any dependencies here; for example:
  s.files        = Dir.glob("{bin,lib,app/assets/javascripts,app/assets/stylesheets}/**/*")
  s.files       += %w(README.md Changelogs.md)
  s.add_development_dependency "rails"
  s.add_runtime_dependency "coffee-rails"
  s.add_runtime_dependency "sass-rails"
end
