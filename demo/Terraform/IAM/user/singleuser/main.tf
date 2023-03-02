provider "aws" {
  region     = "us-east-1"
}
resource "aws_iam_user" "demouser" {
  count = 1
  name = "april"
}
