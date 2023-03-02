
#https://registry.terraform.io/providers/hashicorp/aws/3.37.0/docs/resources/instance#vpc_security_group_ids

provider "aws" {
  region     = "us-east-1"
}
resource "aws_instance" "web-server" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-003ca354e40035e19"]
  key_name      = "SuperKey-Oct16"
  tags = {
    Name = "Instance created by TF"
  }
}
output "instance_state" {
  value = "${aws_instance.web-server.instance_state}"
}
output "private-ip" {
  value = "${aws_instance.web-server.private_ip}"
}
output "server-pulic_IP" {
  value = "${aws_instance.web-server.public_ip}"
}
output "server-arn" {
  value = "${aws_instance.web-server.arn}"
}
output "server-dns" {
  value = "${aws_instance.web-server.public_dns}"
}
