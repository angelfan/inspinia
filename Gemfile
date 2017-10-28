if ENV['REGION'] && ENV['REGION'] != 'china'
  source 'https://rubygems.org'
else
  source 'https://gems.ruby-china.org'
end

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'

# DB
gem 'activerecord-postgis-adapter'
gem 'pg'
gem 'redis'
gem 'redis-namespace'
gem 'redis-objects', require: 'redis/objects'
gem 'redis-rails'

# view rendering
gem 'jbuilder', '~> 2.5'
gem 'simple_form'
gem 'slim'

# assets
gem 'bootstrap-sass'
gem 'coffee-rails', '~> 4.2'
gem 'font-awesome-rails'
gem 'jquery-ui-rails'
gem 'sass-rails', '~> 5.0'
gem 'sweet-alert2-rails'
gem 'uglifier', '>= 1.3.0'

# JS plugin
gem 'jquery-rails'
gem 'turbolinks', '~> 5'

# app server
gem 'puma', '~> 3.7'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  # gem 'capybara', '~> 2.13'
  # gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'overcommit', require: false
  gem 'pry'
  gem 'rails-controller-testing'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'shoulda-matchers'
  gem 'timecop'
  gem 'webmock'
end

group :development do
  gem 'annotate'
  gem 'bullet'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'slackistrano', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# sidekiq
gem 'sidekiq'
gem 'sidekiq-limit_fetch'
gem 'sidekiq-scheduler', '~> 2.0'

# utility
gem 'browser'
gem 'devise'
gem 'ffaker'
gem 'gon'
gem 'gretel'
gem 'httparty'
gem 'kaminari'
gem 'nested_form'
gem 'paper_trail'
gem 'paranoia'
gem 'public_activity'
gem 'pundit'
gem 'ransack'
gem 'seed-fu'
gem 'settingslogic'
gem 'uuidtools'
gem 'wannabe_bool'
gem 'wechat'

# pry
gem 'awesome_print', require: false
gem 'pry-rails'

# Profiling
# gem 'rack-mini-profiler'
# For memory profiling (requires Ruby MRI 2.1+)
# gem 'memory_profiler'
# For call-stack profiling flamegraphs (requires Ruby MRI 2.0.0+)
# gem 'flamegraph'
# gem 'stackprof' # For Ruby MRI 2.1+
