#!/bin/bash

# Navigate to the environment directory
cd environments/$1/$2

# Apply the Terraform configuration
terraform apply -auto-approve