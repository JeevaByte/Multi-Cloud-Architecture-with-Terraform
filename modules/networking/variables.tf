variable "environment" {
  type        = string
  description = "Deployment environment"
}

variable "aws_vpc_cidr" {
  type        = string
  description = "CIDR block for AWS VPC"
  default     = "10.0.0.0/16"
}

variable "azure_vnet_cidr" {
  type        = string
  description = "CIDR block for Azure VNet"
  default     = "10.1.0.0/16"
}

variable "aws_region" {
  type        = string
  description = "AWS region for deployment"
}

variable "azure_location" {
  type        = string
  description = "Azure location for deployment"
}
