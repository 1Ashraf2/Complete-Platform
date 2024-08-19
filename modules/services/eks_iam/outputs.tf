output "eks_cluster_role_arn" {
  description = "IAM Role ARN for EKS Cluster"
  value       = aws_iam_role.eks_cluster.arn
}

output "eks_worker_role_arn" {
  description = "IAM Role ARN for EKS Worker Nodes"
  value       = aws_iam_role.eks_worker.arn
}