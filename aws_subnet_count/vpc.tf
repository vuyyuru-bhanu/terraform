resource "aws_vpc" "vpc" {
  cidr_block = "198.168.0.0/16"
  tags = {
    "Name" = "vpc"
  }
}

resource "aws_subnet" "test" {
  count = 6
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "198.168.${count.index}.0/24"
  availability_zone = element(["ap-south-1a", "ap-south-1b", "ap-south-1c"], count.index)

  tags = {
    Name = "subnet${count.index}"
  }
}