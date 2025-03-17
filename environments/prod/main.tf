module "network" {
  source = "../../modules/networking"
  
  providers = {
    aws.primary     = aws.primary
    azurerm.secondary = azurerm.secondary
  }

  environment          = "prod"
  aws_vpc_id          = "vpc-12345678"
  azure_location      = "eastus"
  azure_resource_group = "prod-resources"
}

module "compute" {
  source = "../../modules/compute"
  
  providers = {
    aws.primary     = aws.primary
    azurerm.secondary = azurerm.secondary
  }

  environment          = "prod"
  instance_size        = "t3.large"
  aws_ami             = "ami-0c55b159cbfafe1f0"
  aws_subnet_id       = module.network.aws_subnet_id
  azure_resource_group = module.network.azure_resource_group_name
  azure_location      = "eastus"
}
