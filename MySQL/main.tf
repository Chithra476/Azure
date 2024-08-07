terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_mysql_server" "example" {
  name                = var.mysql_server_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku_name = var.sku_name
  storage_mb = var.storage_mb
  version = var.mysql_version
  backup_retention_days = var.backup_retention_days
  ssl_enforcement_enabled = var.ssl_enforcement_enabled
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  auto_grow_enabled = var.auto_grow_enabled
  public_network_access_enabled = var.public_network_access_enabled

  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
}

resource "azurerm_mysql_database" "example" {
  name                = var.mysql_database_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_server.example.name
  charset             = var.mysql_database_charset
  collation           = var.mysql_database_collation
}
