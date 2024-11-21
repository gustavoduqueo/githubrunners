# VPC CIDR Block
variable "vpc_cidr" {
    type    = map(string)
    default = {
      "default" = "192.168.0.0/24"
      "dev"     = "192.168.1.0/24"
    }
}

# VPC CIDR Name
variable "vpc_name" {
    type    = map(string)
    default = {
      "default" = "vpc_itm_wordpress_default"
      "dev"     = "vpc_itm_wordpress_dev"
    }
}

# Subnet 1 CIDR Block
variable "subnet_1_cidr" {
    type    = map(string)
    default = {
      "default" = "192.168.0.0/27"
      "dev"     = "192.168.1.0/27"
    }
}

# Subnet 1 Name
variable "subnet_1_name" {
    type    = map(string)
    default = {
      "default" = "subnet_wordpress_default_1"
      "dev"     = "subnet_wordpress_dev_1"
    }
}

# Subnet 2 CIDR Block
variable "subnet_2_cidr" {
    type    = map(string)
    default = {
      "default" = "192.168.0.32/27"
      "dev"     = "192.168.1.32/27"
    }
}

# Subnet 2 Name
variable "subnet_2_name" {
    type    = map(string)
    default = {
      "default" = "subnet_wordpress_default_2"
      "dev"     = "subnet_wordpress_dev_2"
    }
}

# KeyPair
variable "aws_keypair" {
    type    = map(string)
    default = {
      "default" = "keyITMWordpress"
      "dev"     = "keyITMWordpress"
  }
}

# EC2 AMI

variable "ec2_wordpress_ami" {
  type    = map(string)
  default = {
      "default" = "ami-0a1179631ec8933d7"
      "dev"     = "ami-0a1179631ec8933d7"
  }
}

# EC2 Wordpress Instance Type
variable "ec2_wordpress_type" {
  type    = map(string)
  default = {
      "default" = "t2.micro"
      "dev"     = "t2.micro"
  }
}

# EC2 Wordpress Instance Name
variable "ec2_wordpress_name" {
  type    = map(string)
  default = {
      "default" = "EC2_Wordpress_Default"
      "dev"     = "EC2_Wordpress_Dev"
  }
}

# EC2 Wordpress Instance Quantity
variable "ec2_wordpress_quantity" {
  type    = map(string)
  default = {
      "default" = 1
      "dev"     = 1
  }
}

# EC2 Wordpress User_Data
variable "ec2_wordpress_user_data" {
  type = map(string)
  default = {
    "default" = <<EOF
#!/bin/bash
yum update -y
amazon-linux-extras install mariadb10.5
amazon-linux-extras install php8.2
yum install -y httpd
systemctl start httpd
systemctl enable httpd
EOF
"dev" = <<EOF
#!/bin/bash
yum update -y
amazon-linux-extras install mariadb10.5
amazon-linux-extras install php8.2
yum install -y httpd
systemctl start httpd
systemctl enable httpd
EOF
  }
}

# RDS DB Subnet Group Name
variable "rds_sng_name" {
  type    = map(string)
  default = {
      "default" = "sng_defjampy"
      "dev"     = "sng_devjampy"
  }
}

# RDS DB Name
variable "rds_dbname" {
  type    = map(string)
  default = {
      "default" = "defjampy"
      "dev"     = "devjampy"
  }
}

# RDS DB Engine
variable "rds_engine" {
  type    = map(string)
  default = {
      "default" = "mysql"
      "dev"     = "mysql"
  }
}

# RDS DB Engine Version
variable "rds_engine_version" {
  type    = map(string)
  default = {
      "default" = "8.0"
      "dev"     = "8.0"
  }
}

# RDS DB Instance Class
variable "rds_instance_class" {
  type    = map(string)
  default = {
      "default" = "db.t3.micro"
      "dev"     = "db.t3.micro"
  }
}

# RDS DB Allocated Storage
variable "rds_allocated_storage" {
  type    = map(string)
  default = {
      "default" = 10
      "dev"     = 10
  }
}

# RDS DB Username
variable "rds_username" {
  type    = map(string)
  default = {
      "default" = "admin"
      "dev"     = "admin"
  }
}

# RDS DB Password
variable "rds_password" {
  type    = map(string)
  default = {
      "default" = "admindbjampy"
      "dev"     = "admindbjampy"
  }
}

# RDS DB Parameter Group
variable "rds_parameter_group_name" {
  type    = map(string)
  default = {
      "default" = "default.mysql8.0"
      "dev"     = "default.mysql8.0"
  }
}