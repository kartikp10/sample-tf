module "s3_bucket" {
  # source = "git::ssh://git@github.com/cloudposse/terraform-aws-lb-s3-bucket.git"
  # source = "git::https://github.com/cloudposse/terraform-aws-lb-s3-bucket.git"
  # source = "git@github.com:cloudposse/terraform-aws-lb-s3-bucket.git"
  source = "cloudposse/lb-s3-bucket/aws"
  namespace = "eg"
  stage     = "test"
  name      = "bucket"
}
