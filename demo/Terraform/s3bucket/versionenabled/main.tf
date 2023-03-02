provider "aws" {
  region     = "us-east-1"
}
resource "aws_s3_bucket" "my-bucket" {
  bucket = "orange0103"
  acl    = "private"

  versioning {
    enabled = true
  }
}
