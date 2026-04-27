provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "tf-resource-gha-27apr2026"
    key = "gha/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "tf-resource-gha-table-27apr2026"
    encrypt = true
  }
}