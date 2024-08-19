variable "vpn_server_certificate_arn" {
  description = "ARN of the server certificate for the Client VPN endpoint"
}

variable "vpn_root_certificate_chain_arn" {
  description = "ARN of the client certificate for the Client VPN endpoint"
}

variable "environment" {
  type = string
  default = "dev"
}