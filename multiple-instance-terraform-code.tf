# -------- Providers --------

provider "aws" {
  alias  = "south2"
  region = "ap-south-2"
}

provider "aws" {
  alias  = "south1"
  region = "ap-south-1"
}

# -------- EC2 in ap-south-2 --------

resource "aws_instance" "south2_instances" {
  provider = aws.south2

  ami               = "ami-090b9c8aa1c84aefc"
  instance_type     = "t3.micro"
  availability_zone = "ap-south-2a"
  key_name          = "Hyderabad"

  tags = {
    Name = "south2-instance-${count.index + 1}"
  }
}

# -------- EC2 in ap-south-1 --------

resource "aws_instance" "south1_instances" {
  provider = aws.south1

  ami               = "ami-051a31ab2f4d498f5"
  instance_type     = "t3.micro"
  availability_zone = "ap-south-1a"
  key_name          = "Hyderabad"

  tags = {
    Name = "south1-instance-${count.index + 1}"
  }
}