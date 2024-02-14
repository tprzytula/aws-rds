variable "username" {
  type        = string
  description = "Username to connect to the RDS Database"
  sensitive   = true
}

variable "password" {
  type        = string
  description = "Password to connect to the RDS Database"
  sensitive   = true
}

variable "security_group_id" {
  type        = string
  description = "Identifier of the security group to be attached to the RDS Database"
}