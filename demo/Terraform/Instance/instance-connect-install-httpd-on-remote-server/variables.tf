variable "region" {
  default = "us-east-1"
}
variable "private_key_path" {
  default = "SuperKey-Oct16.pem"
}

variable "ami_id" {
  type = "map"
  default = {
    us-east-1    = "ami-0b5eea76982371e91"
    eu-west-2    = "ami-132b3c7efe6sdfdsfd"
    eu-central-1 = "ami-9787h5h6nsn"
    ap-south-1   = "ami-052cef05d01020f1d"
  }
}
