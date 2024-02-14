module "rds" {
  source = "./modules/rds"

  database_username = var.database_username
  database_password = var.database_password
}
