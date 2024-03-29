terraform {
  backend "s3" {
    bucket         = "tfstate-central"
    key            = "state/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "tf_lockid"
  }
}