#!/bin/bash

# Navigate to the environment directory
cd environments/$1/$2

# Initialize Terraform
terraform init

# Plan the Terraform configuration
terraform plan -out=plan.txt