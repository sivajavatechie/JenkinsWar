variables  defined in variable.tf files





#terraform.tfvars

AWS_ACCESS_KEY_ID = "AKIAVINKIGE6KBQBD5NZ"
AWS_SECRET_ACCESS_KEY = "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"


#main.tf
resource "aws_instance" "web-server" {
ami           = "ami-026b57f3c383c2eec"
instance_type = "t2.micro"

  tags = {
    Name = "terraformtraining.com"
  }
}


#variable.tf
variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "region" {
        default = "us-east-1"
}


#provider.tf

provider "aws" {
access_key = "${var.aws_access_key}"
secret_key = "${var.aws_secret_key}"
region     = "${var.region}"
}
