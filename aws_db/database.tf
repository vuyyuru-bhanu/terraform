resource "aws_db_subnet_group" "dbsubgroup" {
  name       = "dbsubgroup"
  subnet_ids = [module.vpc.private_subnets[local.db_subnet_1], module.vpc.private_subnets[local.db_subnet_2]]

  tags = {
    Name = "My DB subnet group"
  }
  depends_on = [ module.vpc ]
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "root"
  password             = "rootroot"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  depends_on = [ module.vpc, aws_db_subnet_group.dbsubgroup ]
  vpc_security_group_ids = [aws_security_group.database.id]
  db_subnet_group_name = aws_db_subnet_group.dbsubgroup.name
}