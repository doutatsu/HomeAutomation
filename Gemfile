source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'pg'

# Assets
gem 'sass-rails', '~> 4.0.0'     # Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'         # browser vendor prefixes automatically
gem 'uglifier', '>= 1.3.0'       # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.0.0'   # Use CoffeeScript for .js.coffee assets and views
gem 'jquery-rails'               # Use jquery as the JavaScript library
gem 'turbolinks'                 # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem "font-awesome-rails"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Server stuff
gem 'thin'
# Hardware gems
 # gem 'pi_piper'
 # gem 'wiringpi'

# Testing gems
gem "rspec-rails", :group => [:test, :development]
gem "factory_girl_rails", :group => [:test, :development] # Used to create testing data 

group :test do
  gem 'capybara'
  # gem 'rack-test'
  # gem 'guard-rspec'         # Automathic rspec run
  # gem 'vcr'                 # For speeding up external API testing
  # gem 'webmock'             # Library for stubbing and setting expectations on HTTP requests
end
group :test, :development do
#   gem 'jasmine-rails'
#   gem 'guard-jshint-on-rails'
#   gem 'jshint_on_rails'
end
