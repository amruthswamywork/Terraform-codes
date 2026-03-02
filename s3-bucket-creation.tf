provider "aws" {
alias = "bucket"
region = "ap-south-2"
}
resource "aws_s3_bucket" "bucket" {
bucket = "amruthswamy-bucket1"
acl ="private"
}

