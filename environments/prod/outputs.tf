output "aws_public_ip" {
  value       = module.compute.aws_public_ip
  description = "AWS instance public IP"
}

output "azure_public_ip" {
  value       = module.compute.azure_public_ip
  description = "Azure VM public IP"
  sensitive   = true
}

output "cross_cloud_dns" {
  value       = module.network.dns_endpoint
  description = "Global DNS endpoint"
}
