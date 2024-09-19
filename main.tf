module "vpc" {
  source = "./network/vpc_subnets"

  vpc_cidr        = var.baseVPC["vpc_cidr"]
  vpc_name        = var.baseVPC["vpc_name"]
  private_subnets = var.baseVPC["private_subnets"]
  azs             = var.azs
}

module "nat" {
  source         = "./network/nat_igw"
  create_igw     = false
  vpc_id         = module.vpc.vpc_id
  vpc_name       = var.baseVPC["vpc_name"]
  private_subnet = module.vpc.private_subnet_ids[0]
}
