resource "azurerm_resource_group" "this" {
  name     = "demo-hello-world-rg"
  location = "australiaeast"
}

resource "azurerm_app_service_plan" "this" {
  name                = "demo-hello-world-asp"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "this" {
  name                = "demo-hello-world-as"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  app_service_plan_id = azurerm_app_service_plan.this.id
}
