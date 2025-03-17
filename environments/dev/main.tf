# Datadog provider for multi-cloud monitoring
resource "datadog_integration_aws" "aws" {
  account_id  = var.aws_account_id
  role_name   = var.datadog_aws_role_name
}

resource "datadog_integration_azure" "azure" {
  tenant_name   = var.azure_tenant_name
  client_id     = var.azure_client_id
  client_secret = var.azure_client_secret
}

variable "aws_account_id" {
  description = "AWS Account ID for Datadog integration"
  type        = string
}

variable "datadog_aws_role_name" {
  description = "Role name for Datadog AWS integration"
  type        = string
}

variable "azure_tenant_name" {
  description = "Azure Tenant Name for Datadog integration"
  type        = string
}

variable "azure_client_id" {
  description = "Azure Client ID for Datadog integration"
  type        = string
}

variable "azure_client_secret" {
  description = "Azure Client Secret for Datadog integration"
  type        = string
}
