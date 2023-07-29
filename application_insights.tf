locals {
  resource_type_abbreviation_local = "ai"
  location_local                   = "West US 3"
}

resource "azurerm_application_insights" "app_insights" {
  name                = "${var.department_abbreviation}-${var.major_environment}-${var.project}-${var.specific_environment}-${local.resource_type_abbreviation_local}-APPIN"
  location            = local.location_local
  resource_group_name = azurerm_resource_group.CORP-LE-NafNet-RG.name

  tags = {
    Owner     = var.tag_owner
    Department = var.tag_department
  }
}
