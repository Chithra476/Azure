variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
  default     = "LabNSG"
}

variable "location" {
  description = "The Azure region where the resources will be created"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
