resource "azurerm_resource_group" "my_res_grp" {
    name            = "fromterraform"
    location        = "eastus"
    tags            =  {
        project     = "learning",
        env         = "dev"
    } 

}

resource "azurerm_storage_account" "my_store_acc" {
    name                        = "mystorageacc"
    resource_group_name         = "fromterraform"
    location                    = "eastus" 
    account_tier                = "Standard" 
    account_replication_type    = "GRS"
    tags                        =  {
        project                 = "learning",
        env                     = "dev"
    } 

}