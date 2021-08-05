module "s3_bucket" {
  # source = "git::ssh://git@github.com/cloudposse/terraform-aws-lb-s3-bucket.git"
  # source = "git::https://github.com/cloudposse/terraform-aws-lb-s3-bucket.git"
  source = "git@github.com:cloudposse/terraform-aws-lb-s3-bucket.git"
  # Cloud Posse recommends pinning every module to a specific version
  # version     = "x.x.x"
  namespace = "eg"
  stage     = "test"
  name      = "bucket"
}
