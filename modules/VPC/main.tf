############# VPC ##############

resource "aws_vpc" "vpc_itm_githubrunners" {
  cidr_block = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = var.vpc_name
  }
}

############# Subnets #############

resource "aws_subnet" "subnet_itm_githubrunners_1" {
  vpc_id = aws_vpc.vpc_itm_githubrunners.id
  cidr_block = var.subnet_1_cidr
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet_1_name
  }
  depends_on = [
    aws_vpc.vpc_itm_githubrunners
  ]
}

resource "aws_subnet" "subnet_itm_githubrunners_2" {
  vpc_id = aws_vpc.vpc_itm_githubrunners.id
  cidr_block = var.subnet_2_cidr
  availability_zone = "us-east-1c"
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet_2_name
  }
  depends_on = [
    aws_vpc.vpc_itm_githubrunners
  ]
}

############# Internet Gateway #############

resource "aws_internet_gateway" "ig_itm_githubrunners" {
  vpc_id = aws_vpc.vpc_itm_githubrunners.id
  depends_on = [
      aws_vpc.vpc_itm_githubrunners
    ]
}

############# Route Table #############

resource "aws_route_table" "rt_itm_githubrunners" {
  vpc_id = aws_vpc.vpc_itm_githubrunners.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig_itm_githubrunners.id
  }
 depends_on = [
      aws_internet_gateway.ig_itm_githubrunners
    ]
}

resource "aws_main_route_table_association" "rt_association_itm_githubrunners" {
  route_table_id = aws_route_table.rt_itm_githubrunners.id
  vpc_id         = aws_vpc.vpc_itm_githubrunners.id
}

############# Security Group #############

resource "aws_security_group" "sgr_itm_githubrunners" {
  name = "sgr_itm_githubrunners"
  vpc_id = aws_vpc.vpc_itm_githubrunners.id
  ingress {
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 0
    to_port = 0
  }
  egress {
    from_port = 0
    protocol  = "-1"
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}