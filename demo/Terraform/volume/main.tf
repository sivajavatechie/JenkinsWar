provider "aws" {
  region     = "us-east-1"
}
resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1c"
  size              = 10

  tags = {
    Name = "vol created by TF"
  }
}
