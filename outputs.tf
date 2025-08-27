output "key_vault_id" {
  value = azurerm_key_vault.secrets.id
}

output "key_vault_uri" {
  value = azurerm_key_vault.secrets.vault_uri
}
