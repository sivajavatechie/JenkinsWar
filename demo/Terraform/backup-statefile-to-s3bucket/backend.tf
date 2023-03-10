terraform {
  required_version = ">= 0.11.0"
  backend "s3" {
    bucket = "vision2023atblue10"
    key    = "backupfolder/terraform.state"
    region = "us-east-1"
  }
}
