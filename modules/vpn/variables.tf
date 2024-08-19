variable "vpc_id" {}
variable "private_subnet_ids" {
  type = list(string)
}
variable "vpc_cidr" {}
variable "client_cidr_block" {
  default = "10.100.0.0/16"
}
variable "server_certificate_arn" {}
variable "root_certificate_chain_arn" {}