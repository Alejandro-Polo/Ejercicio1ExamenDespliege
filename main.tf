terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.80.0"
    }
  }
  required_version = ">= 1.9.0"
  backend "s3" {
    bucket = "my-bucket" 
    key    = "web"                 
    region = "us-east-1"                          
  }
}



resource "aws_s3_bucket" "Ejercicio1" {
  bucket = "my-bucket"

  tags = {
    Name        =""
    Environment = "Dev"
  }
}
