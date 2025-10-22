# Be sure to restart your server when you modify this file.

# バージョン管理（キャッシュ対策）
Rails.application.config.assets.version = "1.0"

# 画像ディレクトリを追加
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "images")

# 追加でプリコンパイルしたいJSがある場合
# （今回はSprockets経由でJSは不要なのでコメントアウト）
# Rails.application.config.assets.precompile += %w( bootstrap.min.js popper.js )
