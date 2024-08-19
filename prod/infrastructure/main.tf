module "subnets" {
  source = "../../modules/core/subnets"

  environment        = var.environment
  public_subnets     = var.public_subnets
  web_subnets        = var.web_subnets
  dbs_subnets        = var.dbs_subnets
  jenkins_subnets    = var.jenkins_subnets
  availability_zones = data.aws_availability_zones.available.names
}