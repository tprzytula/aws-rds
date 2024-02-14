resource "aws_db_instance" "default" {
  db_name    = "tprzytula"
  identifier = "tprzytula"

  engine               = "mysql"
  engine_version       = "8.0.35"
  parameter_group_name = "default.mysql8.0"

  allocated_storage = 20
  instance_class    = "db.t3.micro"

  skip_final_snapshot                 = true
  publicly_accessible                 = true
  iam_database_authentication_enabled = true

  username = var.username
  password = var.password

  vpc_security_group_ids = [var.security_group_id]

  tags = {
    project = "aws-rds"
  }
}
