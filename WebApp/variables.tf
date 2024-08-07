variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
  default     = "newweb-appserviceplan"
}

variable "location" {
  description = "The Azure region where the resources will be created"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "app_service_plan_tier" {
  description = "The tier of the App Service Plan"
  type        = string
  default     = "Standard"
}

variable "app_service_plan_size" {
  description = "The size of the App Service Plan"
  type        = string
  default     = "S1"
}

variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
}

variable "dotnet_framework_version" {
  description = "The .NET framework version for the App Service"
  type        = string
  default     = "v4.0"
}

variable "scm_type" {
  description = "The source control management type for the App Service"
  type        = string
  default     = "LocalGit"
}
