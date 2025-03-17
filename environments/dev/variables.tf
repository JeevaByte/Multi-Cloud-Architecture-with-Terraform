variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "aws_region" {
  description = "AWS region for development"
  type        = string
  default     = "us-west-2"
}

variable "azure_location" {
  description = "Azure region for development"
  type        = string
  default     = "eastus"
}

variable "instance_count" {
  description = "Number of instances to deploy in development"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "Instance type for AWS EC2 in development"
  type        = string
  default     = "t3.micro"
}

variable "azure_vm_size" {
  description = "VM size for Azure Virtual Machines in development"
  type        = string
  default     = "Standard_B1s"
}

variable "aws_vpc_cidr" {
  description = "CIDR block for AWS VPC in development"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azure_vnet_cidr" {
  description = "CIDR block for Azure VNet in development"
  type        = string
  default     = "10.1.0.0/16"
}

variable "datadog_aws_role_name" {
  description = "Role name for Datadog AWS integration"
  type        = string
  default     = "DatadogAWSIntegrationRole"
}

variable "azure_tenant_name" {
  description = "Tenant name for Azure integration"
  type        = string
  default     = "my-azure-tenant"
}
