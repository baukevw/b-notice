source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use postgres as the database for Active Record
gem 'pg', '~> 0.21.0'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
gem 'jquery-turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Gem to enable environment variables
gem 'dotenv-rails'
# Gem for uploading images
gem 'carrierwave'
#Gems for image processing
gem 'mini_magick'

# Gem to rename a rails application
gem 'rename'

gem 'devise'

# Use Bootstrap gem for styling
gem 'bootstrap-sass'
gem 'momentjs-rails'
gem 'bootstrap3-datetimepicker-rails'
gem 'bootstrap-switch-rails'
gem 'bootstrap-colorpicker-rails'

# use font-awesome for awesome fonts
gem 'font-awesome-rails'

# nested form helper
gem 'nested_form_fields'

gem 'httparty'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
    # Load rspec in development for Rakefile compatibility
  gem 'rspec-rails'
  # Gem to provide factories to store test data
  gem 'factory_girl_rails'
  # Fake data generator
  gem 'ffaker'
  # Rubocop with extentions
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-checkstyle_formatter', require: false
  gem 'rubocop-junit-formatter', require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Annotate gem for keeping model data handy during development
  gem 'annotate', github: 'ctran/annotate_models'
  # generate ERD files
  gem 'rails-erd'
end

group :test do
  gem 'database_cleaner'
  gem 'capybara'
  gem 'capybara-email'
  gem 'capybara-webkit'
  gem 'shoulda'
  gem 'simplecov'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
