module "vpc" {
  source = "./network/vpc_subnets"

  vpc_cidr        = var.baseVPC["vpc_cidr"]
  vpc_name        = var.baseVPC["vpc_name"]
  private_subnets = var.baseVPC["private_subnets"]
  azs             = var.azs
}
