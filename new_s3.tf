module "s3_bucket" {
  source = "cloudposse/s3-bucket/aws"
  # Cloud Posse recommends pinning every module to a specific version
  # version = "x.x.x"
  acl                      = "public-read-write"
  enabled                  = true
  user_enabled             = true
  versioning_enabled       = true
  allowed_bucket_actions   = ["s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
  name                     = "app"
  stage                    = "test"
  namespace                = "eg"
}
