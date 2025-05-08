module "VPC" {
  source = "./modules/VPC"
  vpc_cidr      = var.vpc_cidr[terraform.workspace]
  vpc_name      = var.vpc_name[terraform.workspace]
  subnet_1_cidr = var.subnet_1_cidr[terraform.workspace]
  subnet_1_name = var.subnet_1_name[terraform.workspace]
  subnet_2_cidr = var.subnet_2_cidr[terraform.workspace]
  subnet_2_name = var.subnet_2_name[terraform.workspace]
}

module "EC2" {
  source = "./modules/EC2"
  ec2_wordpress_ami           = var.ec2_wordpress_ami[terraform.workspace]
  ec2_wordpress_name          = var.ec2_wordpress_name[terraform.workspace]
  ec2_wordpress_quantity      = var.ec2_wordpress_quantity[terraform.workspace]
  ec2_wordpress_subnet_id     = module.VPC.ec2_wordpress_subnet_id
  ec2_wordpress_type          = var.ec2_wordpress_type[terraform.workspace]
  aws_keypair                 = var.aws_keypair[terraform.workspace]
  vpc_id                      = module.VPC.vpc_id
  ec2_wordpress_user_data     = var.ec2_wordpress_user_data[terraform.workspace]
}

/*
module "RDS" {
  source = "./modules/RDS"
  ec2_wordpress_subnet_id = module.VPC.ec2_wordpress_subnet_id
  ec2_wordpress_subnet_id_2 = module.VPC.ec2_wordpress_subnet_id_2
  rds_dbname = var.rds_dbname[terraform.workspace]
  rds_engine = var.rds_engine[terraform.workspace]
  rds_engine_version = var.rds_engine_version[terraform.workspace]
  rds_instance_class = var.rds_instance_class[terraform.workspace]
  vpc_id = module.VPC.vpc_id
  rds_sng_name = var.rds_sng_name[terraform.workspace]
  rds_allocated_storage = var.rds_allocated_storage[terraform.workspace]
  rds_username = var.rds_username[terraform.workspace]
  rds_password = var.rds_password[terraform.workspace]
  rds_parameter_group_name = var.rds_parameter_group_name[terraform.workspace]

}

*/