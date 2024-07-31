variable "storage_name" {
  description = "The name of the storage account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure location where the resource group should be created."
  type        = string
  default     = "East US"
}

variable "account_tier" {
  description = "The account tier for the storage account."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type for the storage account."
  type        = string
  default     = "LRS"
}

variable "environment" {
  description = "The environment tag for the storage account."
  type        = string
  default     = "Terraform Storage"
}

variable "created_by" {
  description = "The tag to indicate who created the resource."
  type        = string
  default     = "Admin"
}
