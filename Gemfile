source "https://rubygems.org"

ruby "3.2.9"

gem "rails", "~> 7.1.5", ">= 7.1.5.2"
gem "sprockets-rails"
gem "puma", ">= 5.0"

gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

gem "devise"

# ✅ Refile 関連はすべて削除済み

# ✅ Active Storage の variant に必要
gem "image_processing", "~> 1.2"

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem "debug", platforms: %i[ mri mingw ]
end

group :development do
  gem "web-console"
end

group :production do
  gem "pg"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem 'bootstrap', '~> 5.3.0'
gem 'jquery-rails'
gem "sassc-rails"
gem 'kaminari'
gem 'devise-i18n'
gem 'enum_help'
gem 'dotenv-rails', groups: [:development, :test]

# ✅ Cloudinary + Active Storage
gem "cloudinary"
gem "activestorage-cloudinary-service"
