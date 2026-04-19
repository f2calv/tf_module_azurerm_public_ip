variable "resource_group_name" {
  type        = string
  description = "Name of the parent resource group."
}

variable "location" {
  type        = string
  description = "Location of the parent resource group."
  default     = "West Europe"
}

variable "tags" {
  type        = map(string)
  description = "Any tags that should be present on the resources."
  default     = {}
}

variable "public_ip_name" {
  type        = string
  description = "Name of the public IP address."
}

variable "allocation_method" {
  type        = string
  description = "Allocation method for the public IP (Static or Dynamic)."
  default     = "Static"
}

variable "sku" {
  type        = string
  description = "SKU of the public IP (Basic or Standard)."
  default     = "Standard"
}

variable "domain_name_label" {
  type        = string
  description = "Label for the Domain Name. Will be used to make up the FQDN."
  default     = null
}
