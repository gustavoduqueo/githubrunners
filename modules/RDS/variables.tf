variable "rds_sng_name" {
  type        = string
  description = "RDS Subnet Group Name"
}

# VPC Wordpress ID
variable "vpc_id" {
  type        = string
  description = "VPC Wordpress ID"
}

variable "ec2_wordpress_subnet_id" {
  type        = string
  description = "RDS Subnet 1 ID Attached to Subnet Group"
}

variable "ec2_wordpress_subnet_id_2" {
  type        = string
  description = "RDS Subnet 2 ID Attached to Subnet Group"
}

variable "rds_dbname" {
  type        = string
  description = "RDS DB Name"
}

variable "rds_engine" {
  type        = string
  description = "RDS DB Engine"
}

variable "rds_engine_version" {
  type        = string
  description = "RDS DB Engine Version"
}

variable "rds_instance_class" {
  type        = string
  description = "RDS DB Instance Class"
}

variable "rds_allocated_storage" {
  type        = string
  description = "RDS DB Allocated Storage"
}

variable "rds_username" {
  type        = string
  description = "RDS DB Username"
}

variable "rds_password" {
  type        = string
  description = "RDS DB Password"
}

variable "rds_parameter_group_name" {
  type        = string
  description = "RDS DB Parameter Group Name"
}