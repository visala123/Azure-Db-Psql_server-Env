variable "psql_server_name" {}
variable "resource_group_name" {}
variable "location" {}
variable "postgresql_version" {}
variable "sku_name" {}
variable "storage_mb" {}
variable "zone" {}
variable "password_auth_enabled" {}
variable "backup_retention_days" {}
variable "geo_redundant_backup_enabled" {}
variable "prevent_destroy" {}
variable "admin_user" {}
variable "admin_password" {
  sensitive = true
}
variable "tags" {
  type = map(string)
}