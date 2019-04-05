resource "azurerm_kubernetes_cluster" "k8s" {
    name                = "bootcamp_aks"
    location            = "${azurerm_resource_group.k8s.location}"
    resource_group_name = "${azurerm_resource_group.k8s.name}"
    dns_prefix          = "bootcamp"

    agent_pool_profile {
        name            = "agentpool"
        count           = "1"
        vm_size         = "Standard_DS1_v2"
        os_type         = "Linux"
        os_disk_size_gb = 30
    }

    service_principal {
        client_id     = "${var.client_id}"
        client_secret = "${var.client_secret}"
    }

    tags {
        Environment = "Bootcamp"
    }
}
