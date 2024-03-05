output "vpcrange" {
  value = aws_vpc.vpc.cidr_block
}



output "vpc-id" {
    value = aws_vpc.vpc.id
  
}