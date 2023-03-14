//terraform-remote-state/backend.tf

terraform {
  required_version = ">= 0.11.0"
  backend "s3" {
    bucket = "vision2023"
    key    = "myterraform/terraform.state"
    region = "us-east-1"
  }
}
