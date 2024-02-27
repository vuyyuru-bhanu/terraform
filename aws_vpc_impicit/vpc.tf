resource "aws_vpc" "vpc" {
  cidr_block = "198.168.0.0/16"
  tags = {
    "Name" = "vpc"
  }
}

resource "aws_subnet" "first" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "198.168.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "first"
  }
}

resource "aws_subnet" "second" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "198.168.2.0/24"
    availability_zone = "ap-south-1b"
    tags = {
      "Name" = "second"
    }
  
}

resource "aws_subnet" "third" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "198.168.3.0/24"
    availability_zone = "ap-south-1c"
    tags = {
      "Name" = "third"
    }
  
}

resource "aws_subnet" "fourth" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "198.168.4.0/24"
    availability_zone = "ap-south-1c"
    tags = {
      "Name" = "fourth"
    }
  
}
resource "aws_subnet" "fifth" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "198.168.5.0/24"
    availability_zone = "ap-south-1b"
    tags = {
      "Name" = "fifth"
    }
  
}
resource "aws_subnet" "sixth" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "198.168.6.0/24"
    availability_zone = "ap-south-1a"
    tags = {
      "Name" = "sixth"
    }
  
}