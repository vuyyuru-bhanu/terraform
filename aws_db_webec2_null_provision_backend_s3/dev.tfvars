region = "ap-south-1"
vpc = {
  name            = "dev"
  cidr            = "192.168.0.0/16"
  private_subnets = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  public_subnets  = ["192.168.4.0/24", "192.168.5.0/24"]


}
ami-id      = "ami-03bb6d83c60fc5f7c"
web-trigger = "1.0"