variable "mysql_server_name" {
  description = "The name of the MySQL Server"
  type        = string
  default     = "tflab-mysqlserver-1-[some unique characters]"
}

variable "location" {
  description = "The Azure region where the resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "sku_name" {
  description = "The SKU name for the MySQL Server"
  type        = string
  default     = "B_Gen5_2"
}

variable "storage_mb" {
  description = "The storage size in MB for the MySQL Server"
  type        = number
  default     = 5120
}

variable "mysql_version" {
  description = "The version of MySQL"
  type        = string
  default     = "8.0"
}

variable "backup_retention_days" {
  description = "The number of days to retain backups"
  type        = number
  default     = 7
}

variable "ssl_enforcement_enabled" {
  description = "Whether SSL enforcement is enabled"
  type        = bool
  default     = true
}

variable "infrastructure_encryption_enabled" {
  description = "Whether infrastructure encryption is enabled"
  type        = bool
  default     = false
}

variable "auto_grow_enabled" {
  description = "Whether auto-grow is enabled"
  type        = bool
  default     = true
}

variable "public_network_access_enabled" {
  description = "Whether public network access is enabled"
  type        = bool
  default     = true
}

variable "administrator_login" {
  description = "The administrator login for the MySQL Server"
  type        = string
  default     = "mysqladminun"
}

variable "administrator_login_password" {
  description = "The administrator login password for the MySQL Server"
  type        = string
  default     = "easytologin4once!"
  sensitive   = true
}

variable "mysql_database_name" {
  description = "The name of the MySQL Database"
  type        = string
  default     = "exampledb"
}

variable "mysql_database_charset" {
  description = "The charset for the MySQL Database"
  type        = string
  default     = "utf8"
}

variable "mysql_database_collation" {
  description = "The collation for the MySQL Database"
  type        = string
  default     = "utf8_unicode_ci"
}
