output "vpc_id" {
  description = "Instance ID"
  value = aws_instance.ec2_itm_githubrunner.id
}