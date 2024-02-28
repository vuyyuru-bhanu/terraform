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
    vpc_id = aws_vpc.vpc.id #impicit dependency
    cidr_block = "198.168.2.0/24"
    availability_zone = "ap-south-1b"
    
    tags = {
      "Name" = "second"
    }

  depends_on = [ aws_subnet.first ] #explicit dependency  
  
}

resource "aws_subnet" "third" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "198.168.3.0/24"
    availability_zone = "ap-south-1c"
    
    tags = {
      "Name" = "third"
    }

   depends_on = [ aws_subnet.second ] 
  
}

resource "aws_subnet" "fourth" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "198.168.4.0/24"
    availability_zone = "ap-south-1c"
    tags = {
      "Name" = "fourth"
    }
  depends_on = [ aws_subnet.third ]
}
resource "aws_subnet" "fifth" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "198.168.5.0/24"
    availability_zone = "ap-south-1b"
    tags = {
      "Name" = "fifth"
    }
  depends_on = [ aws_subnet.fourth ]
}
resource "aws_subnet" "sixth" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "198.168.6.0/24"
    availability_zone = "ap-south-1a"
    tags = {
      "Name" = "sixth"
    }
  depends_on = [ aws_subnet.fifth ]
}