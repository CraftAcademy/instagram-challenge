source 'https://rubygems.org'

ruby '2.2.3'

# TODO: Remove any unused gems

gem 'rails', '4.2.4'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'devise'
gem 'foundation-rails'
gem 'paperclip', github: 'thoughtbot/paperclip'
gem 'aws-sdk'
gem 'coveralls', require: false

group :production do
  # Adding this as part of my Heroku-related troubleshooting
  # See http://stackoverflow.com/a/3963953
  # gem 'rmagick'
  # Adding this as part of my Heroku-related troubleshooting
  # See https://github.com/heroku/rails_12factor
  gem 'rails_12factor'
end

group :development, :test do
  gem 'pry'
  gem 'dotenv-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
end
