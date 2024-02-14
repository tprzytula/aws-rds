module "security_groups" {
  source = "./modules/security_groups"
}

module "rds" {
  source = "./modules/rds"

  username          = var.database_username
  password          = var.database_password
  security_group_id = module.security_groups.public_access_security_group_id
}
