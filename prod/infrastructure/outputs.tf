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

output "jenkins_subnets" {
  value = module.subnets.jenkins_subnets
}

# output "web_sgs" {
#   value = module.subnets.web_sgs
# }

# output "dbs_sgs" {
#   value = module.subnets.dbs_sgs
# }