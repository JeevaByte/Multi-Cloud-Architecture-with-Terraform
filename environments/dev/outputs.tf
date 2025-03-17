output "aws_instance_id" {
  value       = module.compute.aws_instance_id
  description = "ID of the AWS EC2 instance"
}

output "azure_vm_id" {
  value       = module.compute.azure_vm_id
  description = "ID of the Azure VM"
}

output "vpc_id" {
  value       = module.network.vpc_id
  description = "ID of the AWS VPC"
}

output "vnet_id" {
  value       = module.network.vnet_id
  description = "ID of the Azure VNet"
}
