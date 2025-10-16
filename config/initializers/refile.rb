require "refile"
require "refile/mini_magick"

Refile.cache = Refile::Backend::FileSystem.new("tmp/cache")  # ← tmpから移動！
Refile.store = Refile::Backend::FileSystem.new("public/uploads")  # ← 保存先を分離

Refile.secret_key = '2928d178d74eb4655397aa1c1ae360f3418dd94f65b310faa04f126bfdf333aec4941cba72f8a89818c018f7bed4b3fb8ed8f452beeb7bdeba919bb6a7c7ec8f'
