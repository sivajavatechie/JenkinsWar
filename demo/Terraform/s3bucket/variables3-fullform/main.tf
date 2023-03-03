resource "aws_s3_bucket" "my-ownbucket" {
     bucket = var.bucket_name
     acl    = var.acl 
     tags = var.tags
     versioning {
       enabled = true
      }
     force_destroy = true #all objects (including any locked objects) should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable.

     website {
        index_document = "index.html"
        error_document = "error.html"
        }

     lifecycle_rule {
       id      = "log"
       enabled = true
       prefix = "log/"
       tags = {
       rule      = "log"
       autoclean = "true"
      }
     transition {
      days          = 30
      storage_class = "STANDARD_IA" # or "ONEZONE_IA"
    }
 
    logging {
      target_bucket = aws_s3_bucket.log_bucket.id
      target_prefix = "log/"
    }
  }
}  

