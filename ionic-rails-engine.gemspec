# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ionic-rails-engine/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "ionic-rails-engine"
  gem.version     = IonicRailsEngine::Rails::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Omobono"]
  gem.email       = ["developer@omobono.com"]
  gem.homepage    = "https://github.com/omobono/ionic-rails-engine"
  gem.description = %q{Ionic Framework for Rails 4}
  gem.summary     = gem.description
  gem.license     = 'MIT'

  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ["lib"]

  gem.signing_key = File.join(Dir.home,'/.gem/trust/gem-private_key.pem')
  gem.cert_chain = ['gem-public_cert.pem']

  gem.add_dependency "railties", ">= 3.2"
end

