resource "aws_eks_cluster" "k8s" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}

resource "aws_eks_node_group" "k8s_workers" {
  cluster_name    = aws_eks_cluster.k8s.name
  node_group_name = "${var.cluster_name}-workers"
  node_role_arn   = var.worker_role_arn
  subnets         = var.subnet_ids

  scaling_config {
    desired_size = var.desired_capacity
    max_size     = var.max_size
    min_size     = var.min_size
  }

  instance_types = [var.node_instance_type]
}