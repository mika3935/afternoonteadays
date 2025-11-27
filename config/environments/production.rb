require "active_support/core_ext/integer/time"

Rails.application.configure do
  # 本番環境ではコードをリロードしない
  config.enable_reloading = false

  # アプリ全体を事前ロード（パフォーマンス向上）
  config.eager_load = true

  # エラーレポートを無効化（本番ではtrueにしない）
  config.consider_all_requests_local = false

  # キャッシュ有効化
  config.action_controller.perform_caching = true

  # マスターキーの使用を必須に
  config.require_master_key = true

  # 静的ファイル（画像・CSS・JS）をRailsが配信する
  config.public_file_server.enabled = true

  # アセットをプリコンパイル済みのものを使用
  config.assets.compile = false

  # アップロードファイル保存先
  config.active_storage.service = :cloudinary


  # HTTPSを強制（Renderでは推奨）
  config.force_ssl = true

  # ログ設定
  config.logger = ActiveSupport::Logger.new(STDOUT)
    .tap  { |logger| logger.formatter = ::Logger::Formatter.new }
    .then { |logger| ActiveSupport::TaggedLogging.new(logger) }
  config.log_tags = [ :request_id ]
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")

  # メール設定（Deviseのログイン・パスリセット用URL）
  config.action_mailer.perform_caching = false
  config.action_mailer.default_url_options = {
    host: "afternoonteadays.onrender.com",
    protocol: "https"
  }

  # ロケール設定
  config.i18n.fallbacks = true

  # 非推奨警告を非表示
  config.active_support.report_deprecations = false

  # DBスキーマをマイグレーション後に出力しない
  config.active_record.dump_schema_after_migration = false

  # CSRF保護 — 外部ドメインからのアクセス制御
  config.action_controller.forgery_protection_origin_check = true

  # Renderのホスト名を許可（セキュリティのため必要）
  config.hosts << "afternoonteadays-new.onrender.com"
end
