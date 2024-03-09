
resource "aws_security_group" "database" {
  name        = "databasetest"
  description = "Created by terraform for mysql"
  vpc_id      = module.vpc.vpc_id
  tags = {
    Name = "openmysql"
  }
  depends_on = [
      module.vpc
    ]
}

resource "aws_vpc_security_group_ingress_rule" "example" {
  security_group_id = aws_security_group.database.id

  cidr_ipv4   = local.anywhere 
  from_port   = local.mysql_port
  ip_protocol = local.tcp
  to_port     = local.mysql_port
  depends_on = [
      module.vpc, aws_security_group.database
    ]
}
