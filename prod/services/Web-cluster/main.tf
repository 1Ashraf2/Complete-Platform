module "eks" {
  source = "../../../modules/services/web_k8_cluster"

  cluster_name      = var.cluster_name
  node_instance_type = var.node_instance_type
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size

  vpc_id            = module.vpc.vpc_id
  subnet_ids        = module.vpc.private_subnet_ids
  cluster_role_arn  = module.iam.eks_cluster_role_arn
  worker_role_arn   = module.iam.eks_worker_role_arn
}