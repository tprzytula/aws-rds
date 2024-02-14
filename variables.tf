variable "database_username" {
  type        = string
  description = "Username to connect to the RDS Database"
  sensitive   = true
}

variable "database_password" {
  type        = string
  description = "Password to connect to the RDS Database"
  sensitive   = true
}
