# Azure Virtual Machine
resource "azurerm_linux_virtual_machine" "web_server" {
  provider            = azurerm.secondary
  name                = "vm-${var.environment}-web"
  resource_group_name = var.azure_resource_group
  location            = var.azure_location
  size                = var.instance_size

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}