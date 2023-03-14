resource module: "syntax"

resource "module-name" "logical-name" {
}


--------------------------------------------
  
resource module: "Example"

resource "aws_instance" "web-server" {
 
  //arguments
}

=====================================================
  
[ static method ]
arguments defined inside resource module:

  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  key_name      = "night"
  
  tags = {
    Name = "Dev-server"
         }


=====================================================

[ Dynamic method ]

  ami           = var.ami                     (or) "${var.ami}"                 // variable "ami" {}
  instance_type = var.hardware                (or) "${var.hardware}"           // variable "hardware" {}
  key_name      = var.keyname                 (or) "${var.keyname}"           // variable "keyname" {}
  tags = {                                    (or) "${var.tags}"             // variable "tags" {}
    Name = "This server by terraform code"
  }



=============================================================

tags = {
Name        = "My bucket"
Environment = "Dev"
}


================================================================
  
resource "aws_security_group" "allow-ssh" {
  vpc_id      = aws_vpc.main.id
  name        = "allow-ssh"
  description = "security group that allows ssh and all egress traffic"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow-ssh"
  }
}

