output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.vpc_itm_wordpress.id
}
output "ec2_wordpress_subnet_id" {
  description = "Subnet ID"
  value       = aws_subnet.subnet_itm_wordpress_1.id
}

output "ec2_wordpress_subnet_id_2" {
  description = "Subnet ID"
  value       = aws_subnet.subnet_itm_wordpress_2.id
}