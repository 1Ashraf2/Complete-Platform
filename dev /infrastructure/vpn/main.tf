# ... (previous modules)

module "client_vpn" {
  source = "./modules/client_vpn"

  vpc_id                      = module.vpc.vpc_id
  private_subnet_ids          = module.vpc.private_subnet_ids
  vpc_cidr                    = var.vpc_cidr
  server_certificate_arn      = var.vpn_server_certificate_arn
  root_certificate_chain_arn  = var.vpn_root_certificate_chain_arn
}
