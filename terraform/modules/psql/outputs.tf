output "psql_server_name" {
  value = azurerm_postgresql_flexible_server.psql.name
}

output "psql_server_fqdn" {
  value = azurerm_postgresql_flexible_server.psql.fqdn
}