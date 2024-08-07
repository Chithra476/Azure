variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "TFVnet"
}

variable "vnet_address_space" {
  description = "The address space of the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "default"
}

variable "subnet_address_prefixes" {
  description = "The address prefixes of the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "public_ip_name" {
  description = "The name of the public IP"
  type        = string
  default     = "pubip1"
}

variable "public_ip_allocation_method" {
  description = "The allocation method of the public IP"
  type        = string
  default     = "Dynamic"
}

variable "public_ip_sku" {
  description = "The SKU of the public IP"
  type        = string
  default     = "Basic"
}

variable "nic_name" {
  description = "The name of the network interface"
  type        = string
  default     = "robot-nic"
}

variable "ip_config_name" {
  description = "The name of the IP configuration"
  type        = string
  default     = "ipconfig1"
}

variable "private_ip_allocation_method" {
  description = "The allocation method of the private IP"
  type        = string
  default     = "Dynamic"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "robodiags4tflab"
}

variable "storage_account_tier" {
  description = "The tier of the storage account"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "The replication type of the storage account"
  type        = string
  default     = "LRS"
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
  default     = "robot"
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
  default     = "Standard_B1s"
}

variable "delete_os_disk_on_termination" {
  description = "Delete OS disk on termination"
  type        = bool
  default     = true
}

variable "delete_data_disks_on_termination" {
  description = "Delete data disks on termination"
  type        = bool
  default     = true
}

variable "image_publisher" {
  description = "The publisher of the image"
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "The offer of the image"
  type        = string
  default     = "UbuntuServer"
}

variable "image_sku" {
  description = "The SKU of the image"
  type        = string
  default     = "16.04-LTS"
}

variable "image_version" {
  description = "The version of the image"
  type        = string
  default     = "latest"
}

variable "os_disk_name" {
  description = "The name of the OS disk"
  type        = string
  default     = "osdisk1"
}

variable "os_disk_size_gb" {
  description = "The size of the OS disk in GB"
  type        = number
  default     = 128
}

variable "os_disk_caching" {
  description = "The caching setting of the OS disk"
  type        = string
  default     = "ReadWrite"
}

variable "os_disk_create_option" {
  description = "The create option for the OS disk"
  type        = string
  default     = "FromImage"
}

variable "os_disk_managed_disk_type" {
  description = "The managed disk type of the OS disk"
  type        = string
  default     = "Standard_LRS"
}

variable "computer_name" {
  description = "The name of the computer"
  type        = string
  default     = "robot"
}

variable "admin_username" {
  description = "The admin username for the VM"
  type        = string
  default     = "vmadmin"
}

variable "admin_password" {
  description = "The admin password for the VM"
  type        = string
  default     = "Password12345!"
}

variable "disable_password_authentication" {
  description = "Disable password authentication for the VM"
  type        = bool
  default     = false
}

variable "boot_diagnostics_enabled" {
  description = "Enable boot diagnostics"
  type        = bool
  default     = true
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be created"
  type        = string
  default     = "East US"
}
