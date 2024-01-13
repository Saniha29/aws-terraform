
provider "aws" {
  region = "us-east-1"  # Change this to your desired AWS region
}


resource "aws_instance" "web"{
    ami= "ami-0005e0cfe09cc9050"
    instance_type="t2.micro"
 
tags={
    Name="instance1"
}
}