#module.<module_name>.<output_name>

output "public_subnet_id" {
  value = module.subnets.public_subnet_id
}

output "web_app_subnets" {
  value = module.subnets.web_app_subnets
}

output "dbs_subnets" {
  value = module.subnets.dbs_subnets
}