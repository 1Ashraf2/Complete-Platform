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

terraform {
  required_version = ">= 0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}