terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.8.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
      resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  client_id       = "ef3e16e1-6387-4710-ab15-cf60848e70cf"
  client_secret   = "yvK8Q~oYSbwBTg~phU2CjLUSoAIRMlnMG7GgGcUc"
  tenant_id       = "d614d2c6-b0b3-4a53-bb50-847e747c88d7"
  subscription_id = "9dfcfea7-c731-4d13-91e2-b9aefaff8bf1"
}