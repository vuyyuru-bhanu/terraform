resource "aws_vpc" "vpc" {
  cidr_block = var.vpcaws.cidr_block
  tags = {
    "Name" = var.vpcaws.name
  }
}
resource "aws_subnet" "subnet" {
    count = length(var.awssubnet.availability_zone)
    vpc_id     = aws_vpc.vpc.id
     cidr_block = cidrsubnet( var.vpcaws.cidr_block, 8, count.index)
     availability_zone = var.awssubnet.availability_zone[count.index]

  tags = {
    "Name" = "${var.awssubnet.name}-${count.index}"
  }
  
}