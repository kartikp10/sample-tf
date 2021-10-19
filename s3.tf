resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-data"
  acl           = "public-read"
  force_destroy = true
  tags = {
    yor_trace = "c93ac75e-dc9f-47bf-86e0-7fc073ee009b"
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
    yor_trace = "4e8902e3-a30d-4fb7-9c6f-83d5d9327d25"
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
    yor_trace = "24432cb5-6e4d-4046-a07c-12b363f868d6"
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
    yor_trace = "0372d379-94af-4d4e-8af3-ce812571c89e"
  }
}

resource "aws_s3_bucket" "logs" {
  bucket        = "${local.resource_prefix.value}-logs"
  acl           = "log-delivery-write"
  force_destroy = false
  tags = {
    yor_trace = "415079a5-c910-445b-a20f-28939b341ee6"
  }
}
