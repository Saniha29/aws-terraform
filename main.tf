terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws"{
    alias = "us-east-1"
  region= "us-east-1"
}

module "vpc"{
    source = ""
    name="vpc1"
    cidr="10.0.0.0/16"
    private_subnets = "10.0.0.0/24"
    azs = "us-east-1"
}

module "ec2" {
  source = ""

  name                 = "ec21"
  ami                  = "ami-083327d0fe6d65178" 
  instance_type        = "t2.micro"
  key_name             = "key12"
  vpc_security_group_ids = "vpc-0958da296a96dcc20"

  tags = {
   Name="instance1"
  }
}

module "rds"{
    source = ""
    identifier="db-saniha"
    engine="mysql"
    engine_version = "5.7"
    instance_class = "db.t3.micro"
    username="admin1"
    password = "admin@123"
    vpc_security_group_ids = "vpc-0958da296a96dcc20"
    multi_az = "false"
}


