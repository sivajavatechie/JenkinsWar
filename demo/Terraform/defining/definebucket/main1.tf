resource "aws_s3_bucket" "log_bucket" {
  bucket = "mydemo-loggig18"
  acl    = "log-delivery-write"
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = "demo18-18"
  acl    = "private"
    logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
  }
  versioning {
    enabled = true
  }
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
	
}
}	
	
