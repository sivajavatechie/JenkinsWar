provider.tf 
-------------
provider "aws" {
 //aws version 
//region
//access key
//security
}

--------------------------------------------------
  
[ Static method ]

1.syntax: aws version
version    = "~> 2.0" 


2.syntax: region 
region = "us-east-1"

3.syntax: access key & secret key 
access_key = "AKIAWK3F6TTGC2L42SNE"
secret_key = "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"
 
4.aws credential file
shared_credentials_file = "/root/.aws/credentials"         //server

5.profile
profile = "default"                                        //server
================================================

[ Dynamic method : passing variable ]
1.syntax: aws version
Note: usually passed as static only.

2. syntax: region
region     = "${var.region}" (or) var.region           // variable "region" {}

3.syntax: access key & secret key 
access_key = "${var.access_key}"       // variable "access_key" {}  (or)  variable "access_key" { default = "AKIAWK3F6TTGC2L42SNE" }  #network-module/variables.tf
secret_key = "${var.secret_key}"       // variable "secret_key" {}  (or)   variable "secret_key" {  default = "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"  }  #network-module/variables.tf



