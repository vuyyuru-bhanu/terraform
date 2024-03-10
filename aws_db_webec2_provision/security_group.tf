resource "aws_security_group" "database" {
  description = "Created by terraform for database"
  ingress {
    description = "open database"
    cidr_blocks = [local.anywhere]
    protocol    = local.tcp
    from_port   = local.mysql_port
    to_port     = local.mysql_port

  }
  vpc_id     = module.vpc.vpc_id
  depends_on = [module.vpc]
  tags = {
    "Name" = "database"
  }
}

resource "aws_security_group" "web_ec2" {
  description = "Created by terraform for web servers"
  ingress {
    description = "open ssh "
    cidr_blocks = [local.anywhere]
    protocol    = local.tcp
    from_port   = local.ssh_port
    to_port     = local.http_port

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  vpc_id     = module.vpc.vpc_id
  depends_on = [module.vpc]
  tags = {
    "Name" = "web_ec2"
  }

}

