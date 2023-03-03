resource "aws_s3_bucket" "my-bucket" {
     bucket = var.bucketname
     acl    = var.acl 
     tags  = {
    Ticket = "TASK0001"
    Purpose = "Backup"
    Owner = "mitinfraeng@test.com"
    Name = "datasync_task_name"
    Group = "mitinfraeng@test.com"
    Function = "Storage"
    Environment = "PRD"
    Deployer = "shree.nayak@test.com"
    "Customer Facing" = "No"
    }
     versioning {
       enabled = true
      }
     website {
      index_document = "index.html"
      error_document = "error.html"
   }
 }     
resource "aws_s3_bucket_object" "examplebucket_object" {
  key                    = "someobject"
  bucket                 = aws_s3_bucket.my-bucket.id
  source                 = "index.html"
  }
    
