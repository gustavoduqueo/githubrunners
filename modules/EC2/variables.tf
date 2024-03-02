# AWS KeyPair
variable "aws_keypair" {
  type = string
  description = "AWS KeyPair"
}

# EC2 Github Runner AMI
variable "ec2_githubrunner_ami" {
  type = string
  description = "EC2 Github Runner AMI"
}

# EC2 Github Runner Instance Type
variable "ec2_githubrunner_type" {
  type = string
  description = "EC2 Github Runner Type"
}

# EC2 Github Runner Instance quantity
variable "ec2_githubrunner_quantity" {
  type = number
  description = "EC2 Github Runner Quantity"
}

# EC2 Github Runner Name
variable "ec2_githubrunner_name" {
  type = string
  description = "EC2 Github Runner Name"
}

# EC2 Github Runner Subnet
variable "ec2_githubrunner_subnet" {
  type = string
  description = "EC2 Github Runner Subnet ID"
}

# EC2 Github Runner Subnet
variable "ec2_githubrunner_securitygroup" {
  type = string
  description = "EC2 Github Runner Security Group ID"
}