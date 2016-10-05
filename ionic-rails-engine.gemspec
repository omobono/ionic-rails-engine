# -*- encoding: utf-8 -*-
# stub: ionic-rails-engine 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ionic-rails-engine"
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Omobono"]
  s.cert_chain = ["gem-public_cert.pem"]
  s.date = "2016-09-27"
  s.description = "Ionic Framework for Rails 4"
  s.email = ["developer@omobono.com"]
  s.files = [".gitignore", "Gemfile", "LICENSE", "README.md", "Rakefile", "app/assets/fonts/ionic/ionicons.eot", "app/assets/fonts/ionic/ionicons.svg", "app/assets/fonts/ionic/ionicons.ttf", "app/assets/fonts/ionic/ionicons.woff", "app/assets/javascripts/angular-ui/angular-ui-router.js", "app/assets/javascripts/angular-ui/angular-ui-router.min.js", "app/assets/javascripts/angular/angular-animate.js", "app/assets/javascripts/angular/angular-animate.min.js", "app/assets/javascripts/angular/angular-resource.js", "app/assets/javascripts/angular/angular-resource.min.js", "app/assets/javascripts/angular/angular-sanitize.js", "app/assets/javascripts/angular/angular-sanitize.min.js", "app/assets/javascripts/angular/angular.js", "app/assets/javascripts/angular/angular.min.js", "app/assets/javascripts/ionic/ionic-angular.js", "app/assets/javascripts/ionic/ionic-angular.min.js", "app/assets/javascripts/ionic/ionic.bundle.js", "app/assets/javascripts/ionic/ionic.bundle.min.js", "app/assets/javascripts/ionic/ionic.js", "app/assets/javascripts/ionic/ionic.min.js", "app/assets/javascripts/ionicuirouter/ionicUIRouter.js", "app/assets/stylesheets/ionic/ionic.css.erb", "app/assets/stylesheets/ionic/ionic.min.css.erb", "gem-public_cert.pem", "ionic-rails-engine.gemspec", "lib/ionic-rails-engine.rb", "lib/ionic-rails-engine/version.rb"]
  s.homepage = "https://github.com/omobono/ionic-rails-engine"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.signing_key = "/Users/jamey/.gem/trust/gem-private_key.pem"
  s.summary = "Ionic Framework for Rails 4"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.2"])
    else
      s.add_dependency(%q<railties>, [">= 3.2"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.2"])
  end
end
