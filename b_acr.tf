resource "azurerm_container_registry" "acr" {
  name                     = "bootcampregistry1"
  resource_group_name      = "${azurerm_resource_group.k8s.name}"
  location                 = "${azurerm_resource_group.k8s.location}"
  sku                      = "Standard"
  admin_enabled            = true

}

output "acr_admin_login" {
    value = "${azurerm_container_registry.acr.admin_username}"
}
output "acr_admin_password" {
    value = "${azurerm_container_registry.acr.admin_password}"
}
output "acr_loginserver" {
    value = "${azurerm_container_registry.acr.login_server}"
}
