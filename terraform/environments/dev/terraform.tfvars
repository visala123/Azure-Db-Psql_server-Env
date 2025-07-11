psql_server_name              = "psql-flexible-server123"
resource_group_name           = "rg_rds_psql"
location                      = "East US"
postgresql_version            = "15"
sku_name                      = "B_Standard_B1ms"
storage_mb                    = 32768
zone                          = "1"
password_auth_enabled         = true
backup_retention_days         = 7
geo_redundant_backup_enabled  = false
admin_user                    = "psqladmin"
tags = {
  environment = "dev"
  team        = "devops"
}