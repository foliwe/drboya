require "refile/s3"


aws = {
  access_key_id: Rails.application.secrets.access_key,
  secret_access_key: Rails.application.secrets.secret_key,
  region:  "eu-west-1",
  bucket: Rails.application.secrets.bucket,
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)