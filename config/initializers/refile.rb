require "refile/cloudinary"

Refile.cache = Refile::Cloudinary::Backend.new(prefix: "cache")
Refile.store = Refile::Cloudinary::Backend.new(prefix: "store")
