terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_db_instance" "default" {
  identifier = "aws-test-db"
  allocated_storage    = 20
  db_name              = "octosalesapiprod"
  engine               = "postgres"
  engine_version       = "16.1"
  instance_class       = "db.t3.micro"
  username             = "octosalesapiuser"
  password             = "ZqDE0W34K1U8wnRguHJTEkIsHk95pSFE"
  publicly_accessible = true
  skip_final_snapshot  = true
}