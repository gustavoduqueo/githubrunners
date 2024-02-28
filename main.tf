module "VPC" {
  source = "./modules/VPC"
  vpc_cidr = var.vpc_cidr[terraform.workspace]
  vpc_name = var.vpc_name[terraform.workspace]
}