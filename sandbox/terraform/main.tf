# data "aws_region" "current" {}


# data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket01" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}


resource "aws_vpc" "main001" {
  cidr_block = "10.0.0.0/16"
}