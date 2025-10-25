# Be sure to restart your server when you modify this file.
Rails.application.config.assets.version = "1.0"

# 画像ディレクトリを追加
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "images")

Rails.application.config.assets.precompile += %w( application.js )
