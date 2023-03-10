variable "region" {
  type    = "string"
  default = "us-east-1"
}
variable "ami_id" {
  type = "map"
  default = {
    ap-south-1   = "ami-052cef05d01020f1d"
    us-east-1   = "ami-0b5eea76982371e91"
  }
}
variable "instance_type" {
  type    = "string"
  default = "t2.micro"
}
variable "key_name" {
  type    = "string"
  default = "SuperKey-Oct16"
}
