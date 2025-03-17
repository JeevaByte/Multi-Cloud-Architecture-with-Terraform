resource "aws_vpn_gateway" "vpn_gateway" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.environment}-vpn-gateway"
  }
}

resource "azurerm_virtual_network_gateway" "azure_vpn_gateway" {
  name                = "${var.environment}-azure-vpn-gateway"
  location            = var.azure_location
  resource_group_name = azurerm_resource_group.main.name

  type     = "Vpn"
  vpn_type = "RouteBased"

  active_active = false
  enable_bgp    = false
  sku           = "VpnGw1"

  ip_configuration {
    name                          = "vnetGatewayConfig"
    public_ip_address_id          = azurerm_public_ip.vpn_gateway_ip.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.gateway_subnet.id
  }
}

resource "aws_customer_gateway" "customer_gateway" {
  bgp_asn    = 65000
  ip_address = azurerm_public_ip.vpn_gateway_ip.ip_address
  type       = "ipsec.1"

  tags = {
    Name = "${var.environment}-customer-gateway"
  }
}

resource "aws_vpn_connection" "main" {
  vpn_gateway_id      = aws_vpn_gateway.vpn_gateway.id
  customer_gateway_id = aws_customer_gateway.customer_gateway.id
  type                = "ipsec.1"
  static_routes_only  = true

  tags = {
    Name = "${var.environment}-vpn-connection"
  }
}
