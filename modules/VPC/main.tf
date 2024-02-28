############# VPC ##############

resource "aws_vpc" "VPCITMKubernetes" {
  cidr_block = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = var.vpc_name
  }
}