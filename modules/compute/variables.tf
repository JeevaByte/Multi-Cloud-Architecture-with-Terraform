variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "instance_size" {
  description = "Cloud-agnostic instance size"
  type        = string
  default     = "medium"
}

variable "aws_ami" {
  description = "AWS AMI ID"
  type        = string
}

variable "aws_subnet_id" {
  description = "AWS Subnet ID"
  type        = string
}

variable "azure_resource_group" {
  description = "Azure Resource Group"
  type        = string
}

variable "azure_location" {
  description = "Azure Region"
  type        = string
}
