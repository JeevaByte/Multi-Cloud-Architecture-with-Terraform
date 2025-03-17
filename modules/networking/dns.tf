# AWS Route53
resource "aws_route53_zone" "primary" {
  provider = aws.primary
  name     = "multicloud.example.com"
}

# Azure DNS
resource "azurerm_dns_zone" "secondary" {
  provider            = azurerm.secondary
  name                = "multicloud.example.com"
  resource_group_name = var.azure_resource_group
}

# Cross-Cloud DNS Entry
resource "aws_route53_record" "azure_endpoint" {
  provider = aws.primary
  zone_id  = aws_route53_zone.primary.zone_id
  name     = "azure"
  type     = "CNAME"
  ttl      = 300
  records  = [azurerm_public_ip.web_server.fqdn]
}
