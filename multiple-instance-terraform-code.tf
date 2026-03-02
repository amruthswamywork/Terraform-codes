provider "aws" {
region ="ap-south-2"
}
resource "aws_instance" "multiple-instance" {
ami = "ami-090b9c8aa1c84aefc"
instance_type = "t3.micro"
availablity_zone = "ap-south-2a"
key_name = "Hyderabad"
count=3
tags = {
Name = "instance1"
}
}