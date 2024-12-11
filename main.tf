terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.80.0"
    }
  }
  required_version = ">= 1.9.0"
  backend "s3" {
    bucket = "AlejandroPoloBarrancoDAW" 
    key    = "web"                 
    region = "us-east-1"                          
  }
}



resource "aws_s3_bucket" "Ejercicio1" {
  bucket = "AlejandroPoloBarrancoDAW"
  region = "us-east-1"  
  tags = {
    Name  ="AlejandroPoloBarrancoDAW"
  }
}
