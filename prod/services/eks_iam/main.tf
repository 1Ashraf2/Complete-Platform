module "iam" {
  source = "../../../modules/services/eks_iam"

  cluster_name = var.cluster_name
}
