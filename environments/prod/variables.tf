variable "environment" {
  default = "prod"
}

variable "aws_region" {
  default = "us-west-2"
}

variable "azure_location" {
  default = "eastus"
}

variable "instance_count" {
  default = 3
}

variable "instance_type" {
  default = "t3.medium"
}

variable "azure_vm_size" {
  default = "Standard_D2s_v3"
}
