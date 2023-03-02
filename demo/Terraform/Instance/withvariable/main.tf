provider "aws" {
  region     = "us-east-1"
}
resource "aws_instance" "web-server" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = ["sg-003ca354e40035e19"]
  key_name      = "SuperKey-Oct16"
  tags = {
    Name = "${var.instance_name}"
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
