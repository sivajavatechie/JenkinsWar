provider "aws" {
  region     = "us-east-1"
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = "orange0103"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
output "bucket-id" {
  value = "${aws_s3_bucket.my-bucket.id}" 
}
output "bucket-arn" {
  value = "${aws_s3_bucket.my-bucket.arn}"
}  
output "bucket_domain_name" {
  value = "${aws_s3_bucket.my-bucket.bucket_domain_name}"
} 
output "hosted_zone_id" {
  value = "${aws_s3_bucket.my-bucket.hosted_zone_id}"
} 
output "bucket_region" {
  value = "${aws_s3_bucket.my-bucket.region}"
} 
output "website_endpoint" {
  value = "${aws_s3_bucket.my-bucket.website_endpoint}"
} 
output "website_domain" {
  value = "${aws_s3_bucket.my-bucket.website_domain}"
} 
