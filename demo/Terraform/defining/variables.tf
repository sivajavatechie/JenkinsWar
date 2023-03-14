Dynamic method : passing variable


variable "access_key" {
	default = "AKIAWK3F6TTGC2L42SNE"
}
variable "secret_key" {
	default = "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"
}
variable "region" {
  default = "us-east-2"
}
variable "public_key_path" {
  description = "Public key path"
  default = "~/.ssh/id_rsa.pub"
}
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default = "ami-0cf31d971a3ca20d6"
}
variable "instance_type" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}
variable "environment_tag" {
  description = "Environment tag"
  default = "Production"
}

