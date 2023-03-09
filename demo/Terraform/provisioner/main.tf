provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Demo-server" {
  ami           = "ami-071bd7e25f08c14a6"
  instance_type = "t2.micro"
  provisioner "local-exec" {
  command = "echo ${aws_instance.Demo-server.private_ip} >> private-ip.txt"
}
  provisioner "file" {
  content     = "Hello there"
  destination = "/home/ec2-user/tuts.txt"
}
provisioner "remote-exec" {
  inline = [
  "touch /home/ec2-user/tuts-remote-exec.txt"
        ]
}
  tags = {
    Name = "ExampleInstance"
  }
}
