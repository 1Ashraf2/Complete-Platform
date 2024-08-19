variable "vpc_id" {}
variable "public_subnet_ids" {
  type = list(string)
}
variable "private_subnet_ids" {
  type = list(string)
}
variable "ami_id" {}
variable "db_address" {}
variable "db_name" {}
variable "db_username" {}
variable "db_password" {}