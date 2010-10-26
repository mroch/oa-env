# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "oa-env"
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Marshall Roch"]
  s.email       = ["marshall@mroch.com"]
  s.homepage    = "http://github.org/mroch/oa-env"
  s.summary     = %q{OmniAuth strategy for using REMOTE_USER env}
  s.description = %q{An OmniAuth strategy that uses the REMOTE_USER env set by the web server.}

  s.rubyforge_project = "oa-env"

  s.add_dependency 'oa-core'

  s.files         = Dir.glob("{lib}/**/*") + %w[LICENSE]
  s.require_paths = ["lib"]
end
