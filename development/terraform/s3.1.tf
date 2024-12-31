data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "development_bucket" {
  bucket = "aft-development-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}

