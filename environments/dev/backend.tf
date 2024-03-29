terraform {
 backend "s3" {
    bucket = "my-terraform-state"
    key    = "dev/terraform.tfstate"
    region = var.region
 }
}