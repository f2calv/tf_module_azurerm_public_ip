# Terraform Module for Azure Public IP

Provisions a [Standard static Azure Public IP address](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip).

## Usage

```hcl
module "pip" {
  source              = "git::https://github.com/f2calv/tf_module_azurerm_public_ip.git//src?ref=v0.2.0"
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
| `resource_group_name` | `string` | Required | Name of the parent resource group |
| `location` | `string` | `West Europe` | Location of the parent resource group |
| `public_ip_name` | `string` | Required | Name of the public IP address |
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
