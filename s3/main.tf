provider "aws" {
  region = "ap-south-1" 
  access_key = "aws accesskey"
  secret_key = "aws secret key"
  
  }
resource "aws_s3_bucket" "test"{
  bucket = "testing-hell-cd"
  tags = {
    Name = "testing"
    Environment = "dev"
  }
 }