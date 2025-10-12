require "refile"
require "refile/mini_magick"

Refile.cache = Refile::Backend::FileSystem.new("tmp/cache")
Refile.store = Refile::Backend::FileSystem.new("public/uploads")
