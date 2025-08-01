# variable "rg_names" {

# }
# variable "rg_name" {

# }

variable "rg_name1" {
    type = map(any)

}


# resource "azurerm_resource_group" "resourcename" {
#   name     = "resource1"
#   location = "central india"
# }

# resource "azurerm_resource_group" "resourcename1" {
#   count    = 4
#   name     = "resource1"
#   location = "central india"
# }

# resource "azurerm_resource_group" "resourcename2" {
#   count    = 4
#   name     = var.rg_name1
#   location = "central india"
# }

# resource "azurerm_resource_group" "resourcename2" {
#   count    = length(var.rg_names)
#   name     = var.rg_names[count.index]
#   location = "central india"
# }

# resource "azurerm_resource_group" "resourcename2" {
#   for_each = var.rg_name1
#   name     = each.key
#   location = each.value
# }

# resource "azurerm_resource_group" "resourcename5" {
#   for_each = toset(var.rg_names)
#   name     = each.key
#   location = "West Europe"
# }

resource "azurerm_resource_group" "resourcename6" {
  for_each = var.rg_name1
  name     = each.value.name
  location = each.value.location
}