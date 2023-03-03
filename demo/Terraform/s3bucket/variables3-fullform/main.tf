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
}
