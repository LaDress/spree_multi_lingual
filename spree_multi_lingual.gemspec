# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_multi_lingual'
  s.version     = '1.0.0'
  s.summary     = 'Proof of concept for a multi-lingual Spree store plugin'
  s.description = 'This is a proof of concept for what could become a multi-lingual Spree store plugin. Warning: code quality is from so-so to poor. Just wanted to put out something before Spreeconf so we could discuss and maybe hack around it.'
  s.required_ruby_version = '>= 2.1.0'

  s.author            = 'Jean-Philippe Boily | @jipiboily'
  s.email             = 'j@jipi.ca'
  s.homepage          = 'http://github.com/jipiboily/spree_multi_lingual'

  #s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.1.0'
  s.add_dependency 'spree_backend', '~> 2.1.0'
  s.add_dependency 'spree_frontend', '~> 2.1.0'
  s.add_dependency 'spree_api', '~> 2.1.0'
  s.add_dependency 'i18n'
  s.add_dependency 'globalize', '~> 4.0.0'
  s.add_dependency 'globalize-accessors'
  s.add_dependency 'routing-filter', '~> 0.4.0.pre'
  s.add_dependency 'rack-contrib'

  s.add_dependency 'coffee-rails'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'awesome_print'
  s.add_development_dependency 'deface'
  s.add_development_dependency 'email_spec'
  s.add_development_dependency 'selenium-webdriver'
  # Seems Spree doesn't require it correctly or there is a problem with extensions maybe? Still, it is needed to work with the dummy app!
  s.add_development_dependency 'debugger'
  s.add_development_dependency 'sass-rails'
end
