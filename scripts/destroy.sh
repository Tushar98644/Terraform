#!/bin/bash

# Navigate to the environment directory
cd environments/$1/$2

# Destroy the Terraform-managed resources
terraform destroy -auto-approve