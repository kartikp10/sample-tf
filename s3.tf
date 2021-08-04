  1 module "s3_bucket" {
  2   # source = "git::ssh://git@github.com/cloudposse/terraform-aws-lb-s3-bucket.gi    t"
  3   #source = "git::https://github.com/cloudposse/terraform-aws-lb-s3-bucket.git"
  4   source = "cloudposse/lb-s3-bucket/aws"
      # Cloud Posse recommends pinning every module to a specific version
  5   # version     = "x.x.x"
  6   namespace = "eg"
  7   stage     = "test"
  8   name      = "bucket"
  9 }
