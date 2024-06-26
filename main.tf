provider "aws" {
  region = "eu-west-1"
}

# resource "aws_instance" "example" {
#   ami           = "ami-0e91d7b0085dbf012"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "ExampleInstance"
#   }
# }

terraform {
  backend "s3" {
    bucket = "ash-ter-cert-bucket-2024"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}