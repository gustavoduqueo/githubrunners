output "vpc_id" {
  description = "VPC ID"
  value = aws_vpc.vpc_itm_githubrunners.id
}
output "subnet_id" {
  description = "Subnet ID"
  value       = aws_subnet.subnet_itm_githubrunners_1.id
}

output "securitygroup_id" {
  description = "Security Group ID"
  value       = aws_security_group.sgr_itm_githubrunners.id
}