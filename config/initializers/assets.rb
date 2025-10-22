# Be sure to restart your server when you modify this file.

# アセットのバージョン
Rails.application.config.assets.version = "1.0"

# 画像ディレクトリを追加
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "images")

# CSSだけプリコンパイルする場合（JSはなし）
# デフォルトで app/assets/stylesheets/*.css はプリコンパイルされるので基本不要
# 追加でプリコンパイルしたいCSSがあれば下記のように追記可能
# Rails.application.config.assets.precompile += %w( custom.css )

# JS関連のプリコンパイル設定は削除
# Rails.application.config.assets.precompile += %w( bootstrap.min.js popper.js )
# Rails.application.config.assets.precompile += %w( application.js )
