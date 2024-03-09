resource "aws_vpc" "primary" {
  cidr_block = var.primary_vpc.cidr_block
  tags = {
    "Name" = var.primary_vpc.name
  }
}

resource "aws_vpc" "secondary" {
  cidr_block = var.secondary_vpc.cidr_block
  tags = {
    "Name" = var.secondary_vpc.name
  }
}

resource "aws_subnet" "primary_sub" {
  count = length(var.primary_subnet.cidr_block)
  vpc_id     = aws_vpc.primary.id
  cidr_block = var.primary_subnet.cidr_block[count.index]

  tags = {
    Name = var.primary_subnet.name[count.index]
  }
}

resource "aws_subnet" "secondary_sub" {
  count = length(var.secondary_subnet.cidr_block)
  vpc_id     = aws_vpc.secondary.id
  cidr_block = var.secondary_subnet.cidr_block[count.index]
  
  tags = {
    Name = var.secondary_subnet.name[count.index]
  }
}
