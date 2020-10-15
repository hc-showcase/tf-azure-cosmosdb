provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}

variable "azure_resource_group_name" {
  description = "Name of the target resource group in Azrue"
  default     = "CosmosDB-rg"
}

variable "subscription_id" {
  description = "Set the target subscription in Azure"
  default     = "02d0e07o-ed9d-4ca5-bb9f-0a0243a9c9f2"
}

variable "azure_region" {
  description = "Name of the target Azure region"
  default     = "West Europe"
}

resource "azurerm_resource_group" "rg" {
  name     = var.azure_resource_group_name 
  location = var.azure_region
}

variable "cosmos_db_account_name" {
  default = "mkaesz-cosmosdb"
}

variable "failover_location" {
  default = "australiasoutheast"
}

resource "azurerm_cosmosdb_account" "acc" {
  name                      = var.cosmos_db_account_name
  location                  = azurerm_resource_group.rg.location
  resource_group_name       = azurerm_resource_group.rg.name
  offer_type                = "Standard"
  kind                      = "GlobalDocumentDB"
  enable_automatic_failover = true

  consistency_policy {
    consistency_level       = "Session"
  }
  
  geo_location {
    location                = var.failover_location
    failover_priority       = 1
  }

  geo_location {
    location                = azurerm_resource_group.rg.location
    failover_priority       = 0
  }
}

resource "azurerm_cosmosdb_sql_database" "db" {
  name                = "products"
  resource_group_name = azurerm_cosmosdb_account.acc.resource_group_name
  account_name        = azurerm_cosmosdb_account.acc.name
}

resource "azurerm_cosmosdb_sql_container" "con" {
  name                = "clothes"
  resource_group_name = azurerm_cosmosdb_account.acc.resource_group_name
  account_name        = azurerm_cosmosdb_account.acc.name
  database_name       = azurerm_cosmosdb_sql_database.db.name
  partition_key_path  = "/clothesId"
}
