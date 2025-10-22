# Be sure to restart your server when you modify this file.
Rails.application.config.assets.version = "1.0"

# 画像パスを追加
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "images")

# JSはImportmapで管理するのでプリコンパイル設定不要
