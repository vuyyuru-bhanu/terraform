resource "aws_vpc" "testing" {

    cidr_block = "192.168.0.0/16"
    tags = {
      "Name" = "my first aws vpc"
    }
}