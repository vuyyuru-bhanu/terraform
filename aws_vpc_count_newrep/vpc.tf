resource "aws_vpc" "my_vpc" {

    cidr_block = var.vpc_range
    tags = {
      "Name" = "myvpc"
    }

  
}

resource "aws_subnet" "test" {
    count = length(var.availability)
    cidr_block = cidrsubnet(var.vpc_range, 8, count.index)
    vpc_id = aws_vpc.my_vpc.id
    availability_zone = var.availability[count.index]
    tags = {
      "Name" = var.subnet_name[count.index]
    }
  
}
