source 'https://rubygems.org'

ruby '2.1.2'
gem 'rails', '4.1.4'

gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks'

# Access & Authorization
gem 'devise', '~> 3.3.0'

# Designz Stuff
gem 'bootstrap-sass', '~> 3.2.0.1'

group :development, :test do
  gem 'sqlite3'
  gem 'quiet_assets'
  gem 'spring'
  gem 'guard-livereload', require: false
  gem 'letter_opener'
  gem 'pry'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'passenger', '>= 4.0.42'
end