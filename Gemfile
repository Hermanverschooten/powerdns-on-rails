source 'http://rubygems.org'

gem 'rails', '~> 3.2.22.5'

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'mysql2', '~> 0.3.18'

gem 'haml-rails'
gem 'jquery-rails'
gem 'will_paginate', '~> 3.0.4'
gem "audited-activerecord", "~> 3.0.0.rc2"
gem 'inherited_resources'
gem 'devise' #, '~> 2.2.8'
gem "devise-encryptable"
gem 'rabl'
gem 'state_machine'

gem 'acts_as_list'
gem 'dynamic_form'

group :development do
  gem 'debugger', :platform => :mri_19
  #gem 'RedCloth', '>= 4.1.1'
end

group :development, :test do
  gem "rspec-rails"
  gem 'RedCloth', '>= 4.1.1'
end

group :test do
  gem "factory_girl_rails", "~> 4.0"

  gem 'test-unit', '~> 3.0'
  gem "cucumber-rails", :require => false
  gem 'mocha', :require => false
  gem 'webrat'
  gem 'database_cleaner'
end

gem 'capistrano', '~> 3'
gem 'capistrano-rails', group: :development
gem 'dotenv-rails'

group :production do
  gem 'unicorn'
end

gem 'dns-zonefile'

gem 'pry-byebug'
