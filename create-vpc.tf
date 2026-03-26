provider "aws" {
region ="ap-south-2"
}
resource "aws_vpc" "my_vpc" {
cidr_block = "0.0.0.0/0"
tags = {
Name = "my_vpc1"
}
resource "aws_subnet" "public_subnet" {
vpc_id = "aws-vpc.my_vpc.id "
cidr_block = "19203o3/.3933,303"   #ip address
map_public_id_on_launch = true
availablity_zone = "ap-south=1"
tags ={
    Name = "public_subnet"
} 
}
