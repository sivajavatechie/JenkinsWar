provider "aws" {
  region     = "us-east-1"
}
resource "aws_iam_user" "demo" {
  count = 3
  name = "blue.${count.index}"
}
