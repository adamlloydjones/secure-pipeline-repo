variable "key_vault_name" {
  type        = string
  description = "Name of the Key Vault"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group" {
  type        = string
  description = "Resource group name"
}

variable "tenant_id" {
  type        = string
  description = "Azure AD tenant ID"
}

variable "allowed_ips" {
  type        = list(string)
  default     = []
  description = "List of IPs allowed to access the Key Vault"
}

variable "secrets" {
  type        = map(string)
  description = "Map of secret names to values"
}

variable "tags" {
  type        = map(string)
  default     = {}
}
