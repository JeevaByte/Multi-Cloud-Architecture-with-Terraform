#!/bin/bash
set -eo pipefail

ENVIRONMENT=${1:-dev}
AWS_REGION="us-west-2"
AZURE_LOCATION="eastus"

terraform init \
  -backend-config="bucket=multi-cloud-tfstate" \
  -backend-config="key=${ENVIRONMENT}/terraform.tfstate"

terraform plan \
  -var="environment=${ENVIRONMENT}" \
  -var="aws_region=${AWS_REGION}" \
  -var="azure_location=${AZURE_LOCATION}"

read -p "Apply changes? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  terraform apply -auto-approve \
    -var="environment=${ENVIRONMENT}" \
    -var="aws_region=${AWS_REGION}" \
    -var="azure_location=${AZURE_LOCATION}"
fi
