provider "aws" {
  region = "us-east-1"  # Change this to your desired AWS region
}

resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
 

  tags = {
    Name = "vpc1"
  }
}

resource "aws_subnet" "subnet" {


  vpc_id                  = "vpc-0dcb1b6b2f61d5b4b"
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-east-1"

  tags = {
    Name = "subnet1"
  }
}
