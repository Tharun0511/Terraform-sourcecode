#creation of the Resource-Group
resource "azurerm_resource_group" "RG-1" {
  name     = join("", ["${var.prefix}"], ["${var.rgname}"], ["RG"])
  location = "UKSouth"
  tags = {
    Environment = "Testing"
    Owner       = "tharun.kumar14311@outlook.com"
  }
}

#creation of the Storage account
resource "azurerm_storage_account" "storsimple0098" {
  name                     = lower(join("", ["${var.prefix}"], ["${var.storname}"], ["SA"]))
  resource_group_name      = azurerm_resource_group.RG-1.name
  location                 = azurerm_resource_group.RG-1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  depends_on               = [azurerm_resource_group.RG-1]

  tags = {
    Environment = "Testing"
    Owner       = "tharun.kumar14311@outlook.com"
  }
}

output "rgname" {
  value = join("", ["${var.prefix}"], ["${var.rgname}"], ["RG"])
}

output "storname" {
  value = lower(join("", ["${var.prefix}"], ["${var.storname}"], ["SA"]))
}