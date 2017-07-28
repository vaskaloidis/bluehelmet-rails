source "https://rubygems.org"
ruby "2.3.1"
gem "rails", "~> 5.1", ">= 5.1.2"
# BLUE-HELMET

gem "dotenv-rails", :groups => [:development, :test], :require => "dotenv/rails-now"
# gem "dotenv-rails", require: "dotenv/rails-now"


# Stripe Payments
# gem "payola-payments"
# gem "payola-payments", git: "https://github.com/alekseenko/payola"

gem "paper_trail"
gem "yaml_db"
gem "rollbar" # Error Monitoring
gem "clearance"
gem "faker"
# Suspenders Default Gems

gem "nested_scaffold"
gem "bootstrap_form"
gem 'formtastic', '~> 3.0'

# gem "high_voltage"
gem "autoprefixer-rails"
gem "delayed_job_active_record"
gem "flutie"
gem "jquery-rails"
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "puma"
gem "rack-canonical-host"
gem "recipient_interceptor"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "sprockets", ">= 3.0.0"
gem "suspenders"
gem "title"
gem "uglifier"

group :development do
  gem "awesome_print"
  gem "pry"
  gem "pry-rails"
  gem "pry-byebug"
  gem "better_errors"
  gem "binding_of_caller"
  gem "listen"
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
  gem "rails-erd"
end

group :development, :test do
  gem "bullet"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "factory_girl_rails"
  gem "rspec-rails", "~> 3.5.0.beta4"
end

group :development, :staging do
  gem "rack-mini-profiler", require: false
end

group :test do
  # gem "capybara-webkit"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  # Heroku
  gem "honeybadger"
  gem "rack-timeout"
  gem "rails_stdout_logging"
end