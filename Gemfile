source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"


gem "rails", "~> 7.0.2", ">= 7.0.2.3"
gem "sprockets-rails"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "sass-rails"
gem "coffee-rails"
gem "jquery-rails"
gem "turbolinks"
gem "uglifier"
gem 'bootstrap-sass'
gem "bcrypt"


group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'sqlite3', '~> 1.4'
  gem "byebug"
end

group :development do
  gem "web-console"
  gem "listen"
  gem "spring"
  gem "spring-watcher-listen"
end

group :test do
  gem "rails-controller-testing"
  gem "minitest"
  gem "minitest-reporters"
  gem "guard-minitest"
  gem "guard"
end

group :production do
  gem "pg"
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
