require "refile/s3"
aws = {
  access_key_id: "AKIAIEO77WZG66BVTDVA",
  secret_access_key: "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",
  region: "Oregon",
  bucket: "drboya",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)


##aws = {
  #access_key_id: Rails.application.secrets.access_key,
  #secret_access_key: Rails.application.secrets.secret_key,
  #region: Rails.application.secrets.region,
  #bucket: Rails.application.secrets.bucket,
#}
#Refile.cache = Refile::S3.new(prefix: "cache", **aws)
#Refile.store = Refile::S3.new(prefix: "store", **aws)