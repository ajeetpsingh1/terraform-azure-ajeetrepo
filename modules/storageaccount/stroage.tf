resource "azurerm_resource_group" "ajeetg1" {
  name = var.resourcegroupname
  location = var.resourcegplocation
}

resource "azurerm_storage_account" "ajeetstorage" {
  name = var.storageaccountname
  resource_group_name = azurerm_resource_group.akilarg1.name
  location = azurerm_resource_group.ajeetg1.location
  access_tier = var.tier 
  account_replication_type = "LRS"
  account_tier = "Standard"
}
