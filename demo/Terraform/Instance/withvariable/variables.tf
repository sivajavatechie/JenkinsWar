variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Devserver"
}

variable "ami" {
        default = "ami-0dfcb1ef8550277af"
}
variable "instance_type" {
        default = "t2.micro"
}
