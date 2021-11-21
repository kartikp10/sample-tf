resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-data"
  acl           = "public-read"
  force_destroy = true
  tags = {
    yor_trace = "1e2c5b3a-2e0e-4cb4-b090-5c221fef2e38"
  }
}

resource "aws_s3_bucket" "financials" {
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-financials"
  acl           = "private"
  force_destroy = true
  tags = {
    yor_trace = "0541aacc-7a55-4ef6-a340-5f8af186f684"
  }
}

resource "aws_s3_bucket" "operations" {
  # bucket is not encrypted
  # bucket does not have access logs
  bucket = "${local.resource_prefix.value}-operations"
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
  tags = {
    yor_trace = "d6f05bed-882c-4e55-9a8a-9c9df496d097"
  }
}

resource "aws_s3_bucket" "data_science" {
  # bucket is not encrypted
  bucket = "${local.resource_prefix.value}-data-science"
  acl    = "private"
  versioning {
    enabled = true
  }
  logging {
    target_bucket = "${aws_s3_bucket.logs.id}"
    target_prefix = "log/"
  }
  tags = {
    yor_trace = "2067be01-c1bc-4c90-928c-10a3d70b947f"
  }
}

resource "aws_s3_bucket" "logs" {
  bucket        = "${local.resource_prefix.value}-logs"
  acl           = "log-delivery-write"
  force_destroy = false
  tags = {
    yor_trace = "df8b9a79-15ae-4ec1-bccd-3eebef1a9192"
  }
}
