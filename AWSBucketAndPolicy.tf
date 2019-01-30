provider "aws" {
  region = "ap-south-1"
}


resource "aws_s3_bucket" "examplebucket" {

    bucket = "bucketusingtfscript2011"
    acl = "private"

    lifecycle_rule {
      enabled = true

      transition {
        storage_class = "STANDARD_IA"
        days = "30"
      }

      transition {
        storage_class = "GLACIER"
        days = "60"
      }
    }

}