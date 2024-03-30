#!/bin/bash

# Check if arguments are provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 <environment> <> <backup_location>"
    exit 1
fi

# Ensure the environment directory exists
if [ ! -d "environments/$1/$2" ]; then
    echo "Error: Environment '$1/$2' not found."
    exit 1
fi

# Backup directory
backup_dir="$HOME/$3"

# Check if the backup directory exists, create if not
if [ ! -d "$backup_dir" ]; then
    echo "Creating backup directory: $backup_dir"
    mkdir -p "$backup_dir"
fi

# Navigate to the environment directory
cd "environments/$1/$2" || exit 1

# Timestamp for the backup file
timestamp=$(date +"%Y%m%d%H%M%S")

# Backup the Terraform state file with timestamp and versioning
backup_file="$backup_dir/terraform.tfstate.backup.$timestamp"
cp terraform.tfstate "$backup_file"

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Terraform state file backed up to: $backup_file"
else
    echo "Error: Failed to backup Terraform state file."
fi