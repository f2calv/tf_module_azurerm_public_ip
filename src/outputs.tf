output "id" {
  description = "The ID of the public IP address."
  value       = azurerm_public_ip.this.id
}

output "name" {
  description = "The name of the public IP address."
  value       = azurerm_public_ip.this.name
}

output "location" {
  description = "The location of the public IP address."
  value       = azurerm_public_ip.this.location
}

output "ip_address" {
  description = "The assigned IP address."
  value       = azurerm_public_ip.this.ip_address
}

output "fqdn" {
  description = "The fully qualified domain name of the public IP."
  value       = azurerm_public_ip.this.fqdn
}
