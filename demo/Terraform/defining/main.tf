resource module: "syntax"

resource "module-name" "logical-name" {
}


--------------------------------------------
  
resource module: "Example"

resource "aws_instance" "web-server" {
 
  //arguments
}

---------------------------------------------
  
arguments defined inside resource module:

  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  key_name      = "night"
  tags = {
    Name = "Dev-server"
         }









