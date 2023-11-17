data "azurerm_client_config" "current" {}

module "resource_group" {
  source                   = "github.com/techslateramu/terraform-modules//azure/resourcegroup"
  environment              = var.environment
  location                 = var.location
  main_project             = var.main_project
  sub_project              = var.sub_project
  tags                     = merge(var.tags, var.specific_tags)
}

resource "azurerm_storage_account" "storage" {
  source                   = "github.com/techslateramu/terraform-modules//azure/storageaccount"
  name                     = local.name
  resource_group_name      = module.resource_group.name
  location                 = var.location
  main_project             = var.main_project
  sub_project              = var.sub_project
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = merge(var.tags, var.specific_tags)
}

# module "key_vault" {    
#   source                                      = "../modules/keyvault"
#   depends_on                                  = [ module.resource_group ]
#   kv_name                                                                                                                                                                                = var.kv_name
#   rg_name                                                                                                                                             = var.rg_name
#   location                                    = var.location  
#   tenant_id                                   = data.azurerm_client_config.current.tenant_id
#   object_id                                   = data.azurerm_client_config.current.object_id
# }
