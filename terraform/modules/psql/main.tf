resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_postgresql_flexible_server" "psql" {
  name                   = var.psql_server_name
  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location
  administrator_login    = var.admin_user
  administrator_password = var.admin_password
  version                = var.postgresql_version
  sku_name               = var.sku_name
  storage_mb             = var.storage_mb
  zone                   = var.zone
  tags                   = var.tags

  authentication {
    password_auth_enabled = var.password_auth_enabled
  }

  # Uncomment if backups are to be configured
  # backup {
  #   backup_retention_days        = var.backup_retention_days
  #   geo_redundant_backup_enabled = var.geo_redundant_backup_enabled
  # }

  lifecycle {
    prevent_destroy = var.prevent_destroy
  }
}