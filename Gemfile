source "https://rubygems.org"

ruby "3.2.9"

# Rails 本体
gem "rails", "~> 7.1.5", ">= 7.1.5.2"

# Asset pipeline
gem "sprockets-rails"

# SQLite3 データベース
# gem "sqlite3", "~> 1.6.9"

# Webサーバー
gem "puma", ">= 5.0"

# importmap & Hotwire
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

# JSON API サポート
gem "jbuilder"

# Windows 環境向け設定
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ] 

# 高速化
gem "bootsnap", require: false

# 認証
gem "devise"

# --- ここから Refile 関連 ---
gem "refile-mini_magick"
gem "ffi"
# --- ここまで Refile 関連 ---

# 画像変換のため（Refile-mini_magickが使う）
gem "image_processing", "~> 1.2"

group :development, :test do
 # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
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

gem "refile", require: "refile/rails"
gem "refile-cloudinary"
gem "refile-mini_magick"
