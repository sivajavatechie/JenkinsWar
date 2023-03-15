provider "aws" {
	region  = var.region
}


resource "aws_instance" "main" {
	ami           = var.ami
	instance_type = var.instance_type

	tags = {
		Name = "demo"
	}
}
