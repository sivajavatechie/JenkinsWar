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






