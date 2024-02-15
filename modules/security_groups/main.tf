resource "aws_security_group" "allow_rds_mysql_public_access" {
  name        = "allow_rds_mysql_public_access"
  description = "Allow Public Access to the MySQL RDS Instance"

  tags = {
    project = "aws-rds"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_rds_mysql_public_access_ipv4" {
  security_group_id = aws_security_group.allow_rds_mysql_public_access.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 3305
  ip_protocol       = "tcp"
  to_port           = 3306

  tags = {
    project = "aws-rds"
  }
}

resource "aws_vpc_security_group_egress_rule" "allow_rds_mysql_public_access_ipv4" {
  security_group_id = aws_security_group.allow_rds_mysql_public_access.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 3305
  ip_protocol       = "tcp"
  to_port           = 3306

  tags = {
    project = "aws-rds"
  }
}
