region = "ap-south-1"
primary_vpc = {
  name = "primary"
  cidr_block = "192.168.0.0/16"
}
secondary_vpc = {
  name = "secondary"
  cidr_block = "10.168.0.0/16"
}
primary_subnet = {
  cidr_block = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  name = ["primary1", "primary2", "primary3", "primary4"]
}
secondary_subnet = {
  cidr_block = [ "10.168.0.0/24", "10.168.1.0/24", "10.168.2.0/24", "10.168.3.0/24"]
  name = [ "secondary1", "secondary2", "secondary3", "secondary4" ]
}