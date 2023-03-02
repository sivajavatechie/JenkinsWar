variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Dev"
}

variable "ami" {
        default = "ami-0b5eea76982371e91"
}
variable "instance_type" {
        default = "t2.micro"
}

variable "sg" {
        default = "sg-044d9895e1f43efb1"
}
