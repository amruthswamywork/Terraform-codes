provider "aws" {
region ="ap-south-2"
}
resource "aws_instance" "demo1" {
ami = "ami-090b9c8aa1c84aefc"
instance_type = "t3.micro"
availablity_zone = "ap-south-2a"
key_name = "Hyderabad"
tags = {
Name = "instance1"
}
}
