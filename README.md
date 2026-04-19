# Terraform Module: Azure Public IP

Provisions an [Azure Public IP address](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) with Standard SKU and static allocation by default.

## Usage

```hcl
module "pip" {
  source              = "git::https://github.com/f2calv/tf_module_azurerm_public_ip.git//src?ref=main"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  public_ip_name      = "my-public-ip"
  domain_name_label   = "myapp"
  tags                = { environment = "dev" }
}
```

## Variables

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| `resource_group_name` | `string` | — | Name of the parent resource group |
| `location` | `string` | `West Europe` | Location of the parent resource group |
| `public_ip_name` | `string` | — | Name of the public IP address |
| `allocation_method` | `string` | `Static` | Allocation method (Static or Dynamic) |
| `sku` | `string` | `Standard` | SKU of the public IP (Basic or Standard) |
| `domain_name_label` | `string` | `null` | Label for the Domain Name (used to make up the FQDN) |
| `tags` | `map(string)` | `{}` | Any tags that should be present on the resources |

## Outputs

| Name | Description |
| --- | --- |
| `id` | The ID of the public IP address |
| `name` | The name of the public IP address |
| `location` | The location of the public IP address |
| `ip_address` | The assigned IP address |
| `fqdn` | The fully qualified domain name of the public IP |
