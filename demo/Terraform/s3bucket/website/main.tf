#provider file
provider "aws" {
  region     = "${var.region}"
}

#variable file
variable "region" {}
variable "bucketname" {}
variable "acl" {}


#main file
resource "aws_s3_bucket" "mybucketid" {
    bucket = "${var.bucketname}"
    acl    = "${var.acl}"
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

    #enabling bucket versioning
    versioning {
       enabled = true
      }
    #static website hosting
    website {
      index_document = "index.html"   //this will just create index.html format
      error_document = "error.html"
   }
 }

#uploading 'index.html' file from source to s3 bucket
resource "aws_s3_bucket_object" "index" {
  bucket                 = "${aws_s3_bucket.mybucketid.id}"
  key                    = "index.html"
  source                 = "html/index.html"
  content_type           = "text/index.html"
  acl = "public-read"
 }

#uploading 'error.html' file from source to s3 bucket
resource "aws_s3_bucket_object" "error" {
  bucket                 = "${aws_s3_bucket.mybucketid.id}"
  key                    = "error.html"
  source                 = "html/error.html"
  content_type           = "text/error.html"
  acl = "public-read"
 }




#output file
output "bucket-id" {
  value = "${aws_s3_bucket.mybucketid.id}"
}
output "bucket-arn" {
  value = "${aws_s3_bucket.mybucketid.arn}"
}
output "bucket_domain_name" {
  value = "${aws_s3_bucket.mybucketid.bucket_domain_name}"
}
output "hosted_zone_id" {
  value = "${aws_s3_bucket.mybucketid.hosted_zone_id}"
}
output "bucket_region" {
  value = "${aws_s3_bucket.mybucketid.region}"
}
output "website_endpoint-hosting" {
  value = "${aws_s3_bucket.mybucketid.website_endpoint}"
}
output "website_domain" {
  value = "${aws_s3_bucket.mybucketid.website_domain}"
}

