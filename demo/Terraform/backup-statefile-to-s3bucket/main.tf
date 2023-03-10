resource "aws_s3_bucket" "bucket" {
  bucket = "vision2023atblue10"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
