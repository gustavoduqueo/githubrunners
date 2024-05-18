resource "aws_db_subnet_group" "sng_dbjampy" {
  name = var.rds_sng_name
  subnet_ids = [var.ec2_wordpress_subnet_id, var.ec2_wordpress_subnet_id_2]
}

resource "aws_db_instance" "dbjampy" {
  db_name = var.rds_dbname
  engine = var.rds_engine
  engine_version = var.rds_engine_version
  instance_class = var.rds_instance_class
  db_subnet_group_name = aws_db_subnet_group.sng_dbjampy.name
  allocated_storage = var.rds_allocated_storage
  username = var.rds_username
  password = var.rds_password
  parameter_group_name = var.rds_parameter_group_name
  publicly_accessible = true
  skip_final_snapshot = true
}