terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}

# Create virtual network
resource "azurerm_virtual_network" "TFNet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    environment = "Terraform VNET"
  }
}

# Create subnet
resource "azurerm_subnet" "tfsubnet" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.TFNet.name
  address_prefixes     = var.subnet_address_prefixes
}

# Deploy Public IP
resource "azurerm_public_ip" "example" {
  name                = var.public_ip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.public_ip_allocation_method
  sku                 = var.public_ip_sku
}

# Create NIC
resource "azurerm_network_interface" "example" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.ip_config_name
    subnet_id                     = azurerm_subnet.tfsubnet.id
    private_ip_address_allocation = var.private_ip_allocation_method
    public_ip_address_id          = azurerm_public_ip.example.id
  }
}

# Create Boot Diagnostic Account
resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

  tags = {
    environment = "Boot Diagnostic Storage"
    CreatedBy   = "Admin"
  }
}

# Create Virtual Machine
resource "azurerm_virtual_machine" "example" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.example.id]
  vm_size               = var.vm_size
  delete_os_disk_on_termination = var.delete_os_disk_on_termination
  delete_data_disks_on_termination = var.delete_data_disks_on_termination

  storage_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }

  storage_os_disk {
    name              = var.os_disk_name
    disk_size_gb      = var.os_disk_size_gb
    caching           = var.os_disk_caching
    create_option     = var.os_disk_create_option
    managed_disk_type = var.os_disk_managed_disk_type
  }

  os_profile {
    computer_name  = var.computer_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = var.disable_password_authentication
  }

  boot_diagnostics {
    enabled     = var.boot_diagnostics_enabled
    storage_uri = azurerm_storage_account.sa.primary_blob_endpoint
  }
}
