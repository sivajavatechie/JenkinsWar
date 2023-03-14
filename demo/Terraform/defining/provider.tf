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
access_key =
secret_key =
 
4.aws credential file
shared_credentials_file = "/root/.aws/credentials"         //server

5.profile
profile = "default"                                        //server
================================================

[ Dynamic method : passing variable ]
1.syntax: aws version
Note: usually passed as static only.

2. syntax: region
region     = "${var.region}"

3.syntax: access key & secret key 
access_key = "${var.access_key}"
secret_key = "${var.secret_key}"



