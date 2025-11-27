require_relative "boot"

require "rails/all"

# Gemfile に記載された gem を読み込む
Bundler.require(*Rails.groups)

module Afternoonteadays
  class Application < Rails::Application
    config.load_defaults 7.1

    # i18n設定（日本語化）
    config.i18n.default_locale = :ja
    config.i18n.available_locales = [:en, :ja]

    # lib配下の自動読み込み設定
    config.autoload_lib(ignore: %w(assets tasks))

    # タイムゾーン設定
    config.time_zone = "Tokyo"
    config.active_record.default_timezone = :local

    # ジェネレータ設定（不要ファイルを生成しない）
    config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework nil
    end
  end
end
