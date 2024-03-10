resource "aws_instance" "web_ec2" {
  ami                         = var.ami-id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "all"
  vpc_security_group_ids      = [aws_security_group.web_ec2.id]
  subnet_id                   = module.vpc.public_subnets[0]
  tags = {
    "Name" = "web"
  }
  depends_on = [
    module.vpc,
    aws_security_group.web_ec2
  ]



}
resource "null_resource" "web_ec2" {

  triggers = {
    running_number = var.web-trigger
  }

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "ubuntu"
      password = file("~/Downloads/all.pem")
      host     = aws_instance.web_ec2.public_ip
    }
    inline = [
      "sudo apt-update",
      "sudo apt install nginx -y"
    ]

  }
  depends_on = [aws_instance.webec2]
}

