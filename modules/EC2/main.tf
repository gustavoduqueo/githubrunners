############# EC2 Github Runner Instance #############
resource "aws_instance" "ec2_itm_githubrunner" {
  ami = var.ec2_githubrunner_ami
  instance_type = var.ec2_githubrunner_type
  count = var.ec2_githubrunner_quantity
  subnet_id = var.ec2_githubrunner_subnet
  key_name = var.aws_keypair
  security_groups = [var.ec2_githubrunner_securitygroup]
  tags = {
    Name = var.ec2_githubrunner_name
  }
  }
  