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

# resource "aws_elastic_beanstalk_application" "octosales" {
#   name        = "octo-sales-api-prod"
#   description = "octo-sales-api-prod-application"
# }

# resource "aws_elastic_beanstalk_environment" "octosalesenv" {
#   name                   = "octo-sales-api-prod"
#   application            = aws_elastic_beanstalk_application.octosales.name
#   tier                   = "WebServer"
#   solution_stack_name = "64bit Amazon Linux 2 v5.9.0 running Node.js 18"
#   wait_for_ready_timeout = "20m"
# }

# resource "aws_db_instance" "default" {
#   identifier = "aws-test-db"
#   allocated_storage    = 20
#   db_name              = "octosalesapiprod"
#   engine               = "postgres"
#   engine_version       = "16.1"
#   instance_class       = "db.t3.micro"
#   username             = "octosalesapiuser"
#   password             = "ZqDE0W34K1U8wnRguHJTEkIsHk95pSFE"
#   publicly_accessible = true
#   skip_final_snapshot  = true
# }

# resource "aws_instance" "app_server" {
#   ami           = "ami-03d5c68bab01f3496"
#   instance_type = "t2.micro"
#   key_name = "terraform-alura"

#   tags = {
#     Name = "Terraform Ansible Python"
#   }
# }
