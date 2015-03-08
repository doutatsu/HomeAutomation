source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'pg'

# Assets
gem 'sass-rails', '~> 4.0.0'     # Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.2.0' # SASS tailored Bootstrap
gem 'autoprefixer-rails'         # browser vendor prefixes automatically
gem 'uglifier', '>= 1.3.0'       # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.0.0'   # Use CoffeeScript for .js.coffee assets and views
gem 'jquery-rails'               # Use jquery as the JavaScript library
gem 'turbolinks'                 # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jquery-turbolinks'          # Makes turbolinks with JS work
gem 'font-awesome-rails'         # Font Awesome Icons for Rails
gem 'bootstrap-switch-rails'     # Bootstrap Switch tailored for Rails
gem 'bootstrap-timepicker-rails' # Makes turbolinks with JS work
gem 'jquery-ui-rails'            # JQuery UI for Rails (Scrollable, etc.)

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Server stuff
gem 'thin'
gem 'sidekiq' # Background jobs => Event handeling
# gem 'redis-rb' # Redis Queue => Holding jobs

# Database stuff
gem 'ranked-model' # Row sorting library
 

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
