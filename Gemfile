source 'http://rubygems.org'

gem 'rails', '3.0.9'
gem 'jquery-rails', '>= 0.2.7'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem "mongoid", "~> 2.1"
gem "bson_ext", "~> 1.3"

group :development do
  gem 'rspec-rails', '2.6.1'
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-rspec'
end
 
group :test do
  gem 'rspec'
  gem 'growl'
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'spork', '~> 0.9.0.rc'
  gem 'guard-spork'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'mongoid-rspec'
end