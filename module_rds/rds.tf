provider "aws" {
  region = "us-east-1" 
}



resource "aws_db_instance" "rds" {
  identifier            = "db-saniha"
  engine                = "mysql"
  engine_version        = "5.7"
  instance_class        = "db.t3.micro"
  username              = "admin1"
  password              = "admin@123"
  publicly_accessible   = false 
  multi_az              = false
}
