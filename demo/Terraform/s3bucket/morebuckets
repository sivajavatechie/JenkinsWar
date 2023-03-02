provider "aws" {
  region     = "us-east-1"
}
resource "aws_s3_bucket" "my-bucket" {
  count = 3
  bucket = "orange2023.${count.index}"
  acl    = "private"

  versioning {
    enabled = true
  }
}
