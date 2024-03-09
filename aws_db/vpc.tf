module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.network.name
  cidr = var.network.vpccidr

  azs             = [ local.az_a, local.az_b]
  private_subnets = var.network.privatesub
  public_subnets  = var.network.publicsub

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}