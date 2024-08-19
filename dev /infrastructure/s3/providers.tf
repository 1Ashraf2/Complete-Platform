provider "aws" {
  region = "eu-west-1"
}
terraform {
  backend "s3" {
    bucket = "ash-ter-cert-bucket-2024"
    key    = "Platform/dev/infrastructure/terraform.tfstate"
    region = "eu-west-1"
  }
}