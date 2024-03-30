#!/bin/bash

# Navigate to the environment directory
cd environments/$1

# Validate the Terraform configuration
terraform validate