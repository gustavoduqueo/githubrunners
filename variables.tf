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
      "default" = "vpc_itm_githubrunners_default"
      "dev"     = "vpc_itm_githubrunners_dev"
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
      "default" = "subnet_githubrunners_default_1"
      "dev"     = "subnet_githubrunners_dev_1"
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
      "default" = "subnet_githubrunners_default_2"
      "dev"     = "subnet_githubRunners_dev_2"
    }
}

# KeyPair
variable "aws_keypair" {
    type    = map(string)
    default = {
      "default" = "keyITMGithubRunners"
      "dev"     = "keyITMGithubRunners"
  }
}

variable "ec2_githubrunner_ami" {
  type    = map(string)
  default = {
      "default" = "ami-07761f3ae34c4478d"
      "dev"     = "ami-07761f3ae34c4478d"
  }
}

# EC2 Github Runner Instance Type
variable "ec2_githubrunner_type" {
  type    = map(string)
  default = {
      "default" = "t2.micro"
      "dev"     = "t2.micro"
  }
}

# EC2 Github Runner Instance Name
variable "ec2_githubrunner_name" {
  type    = map(string)
  default = {
      "default" = "EC2_GithubRunner_Default"
      "dev"     = "EC2_GithubRunner_Dev"
  }
}

# EC2 Github Runner Instance Quantity
variable "ec2_githubrunner_quantity" {
  type    = map(string)
  default = {
      "default" = 2
      "dev"     = 2
  }
}