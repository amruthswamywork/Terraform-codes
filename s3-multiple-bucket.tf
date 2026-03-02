provider "aws" {
  alias  = "bucketmultiple"
  region = "ap-south-2"
}

variable "s3_bucket_names" {
  type = list(string)

  default = [
    "amruthswamybucket1",
    "amruthswamybucket2",
    "amruthswamybucket3"
  ]
}

resource "aws_s3_bucket" "multiplebucket" {
  provider = aws.bucketmultiple

  count  = length(var.s3_bucket_names)
  bucket = var.s3_bucket_names[count.index]

  force_destroy = true
}