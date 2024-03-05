data "aws_vpc" "main" {
  default = true
}

data "aws_subnets" "name" {

    filter {
      name = "vpc-id"
      values = [data.aws_vpc.main.id]
    }
  
}

output "vpc_id" {
    value = data.aws_vpc.main.id
  
}
output "aws_subs" {
    value = data.aws_subnets.name.ids
  
}
output "sub_count" {
    value = length(data.aws_subnets.name.ids)
  
}