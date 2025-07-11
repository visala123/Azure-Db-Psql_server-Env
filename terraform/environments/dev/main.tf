provider "azurerm" {
  features {}
}

module "psql" {
  source                    = "../../modules/psql"
  psql_server_name          = var.psql_server_name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  postgresql_version        = var.postgresql_version
  sku_name                  = var.sku_name
  storage_mb                = var.storage_mb
  zone                      = var.zone
  password_auth_enabled     = var.password_auth_enabled
  backup_retention_days     = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled
  admin_user                = var.admin_user
  admin_password            = var.admin_password
  tags                      = var.tags
}