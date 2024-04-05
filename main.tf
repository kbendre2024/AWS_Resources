
module "vpc" {
  source      = "./modules/vpc"
  region      = var.region
  vpc_name    = var.vpc_name
  cidr_block  = var.cidr_block
}

module "public_subnets" {
  source              = "./modules/subnets"
  region              = var.region
  vpc_id              = module.vpc.vpc_id
  subnet_count        = 2
  subnet_type         = "public"
  cidr_block          = module.vpc.cidr_block  
  cidr_suffix         = ["1", "2"]
  availability_zones  = var.availability_zones
}

module "private_subnets" {
  source              = "./modules/subnets"
  region              = var.region
  vpc_id              = module.vpc.vpc_id
  subnet_count        = 2
  subnet_type         = "private"
  cidr_block          = module.vpc.cidr_block 
  cidr_suffix         = ["3", "4"]
  availability_zones  = var.availability_zones
}
module "security_group" {
  source              = "./modules/security_group"
  region              = var.region
  vpc_id              = module.vpc.vpc_id
  security_group_name = var.security_group_name
}
