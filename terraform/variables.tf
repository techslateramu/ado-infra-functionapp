variable "rg_name" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."  
  default = "techslate-ade-rg"
}

variable "location" {
    description =  "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."    
    default = "northeurope"  
}

variable "tags" {
    description =  "(Optional) A mapping of tags which should be assigned to the Resource Group."
    default = {  
      "source" = "terraform"
      "env"    = "dev"
      "cost"   = "163"
      "dept"   = "finance"
    }
}


variable "kv_name" {
  description = ""
  default = "techslate-ade-kv001"
}

variable "st_name" {
  description = "(Required) Specifies the name of the storage account. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."
  default = "techslatestorage001"
}

variable "asp_name" {
  description = ""
  default = "techslate-asp-001"
}

variable "fun_name" {
  description = ""
  default = "techslate-function-001"
}

variable "storage_account_access_key" {
    default = "techslate-function-001"
}


=====

variable "environment" { default = "dev" }              # should be coming from env folder for ex: tst.tfvars
variable "tags" {
    default = {
        "MainProject" = "TechSlate"
        "SubProject"  = "Containers"
    }
}

variable "ARM_SUBSCRIPTION_ID"  {}
variable "ARM_TENANT_ID"        {}
variable "ARM_CLIENT_ID"        {}
variable "ARM_CLIENT_SECRET"    {}

variable "specific_tags"        { default = {} }

variable "main_project"         { default = "" }   # Set this VARIABLE - this will form  the name of RESOURCES

variable "sub_project"          { default = "01" }
variable "location"             { default = "uksouth" }                             # https://github.com/claranet/terraform-azurerm-regions/blob/master/regions.tf
variable "container_image"      { default = "linuxramu/calc:2.5" }

variable "dns_name_label"       { default = "" }  # Set this VARIABLE - this will be URL of application, should be unique