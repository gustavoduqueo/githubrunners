output "ec2_wordpress_id" {
  description = "Instance ID"
  value       = aws_instance.ec2_itm_wordpress[*].id
}