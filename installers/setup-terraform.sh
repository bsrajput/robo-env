#!/bin/sh

# Fail on error
set -e

# Update deps
sudo apt-get update -y 
sudo apt-get upgrade -y

TERRAFORM_VERSION="0.11.12"

echo "Installing Terraform..."
wget --no-check-certificate  https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip 
sudo unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
sudo mv terraform /home/aaa/bin/

echo "Done!"