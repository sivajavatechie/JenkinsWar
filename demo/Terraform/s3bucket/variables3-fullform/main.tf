resource "aws_s3_bucket" "my-bucket" {
     bucket = var.bucket_name
     acl    = var.acl 
     tags = "${var.tags}"
     versioning {
       enabled = true
      }
}
