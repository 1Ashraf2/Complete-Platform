output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = aws_eks_cluster.k8s.name
}

output "cluster_endpoint" {
  description = "API Server endpoint"
  value       = aws_eks_cluster.k8s.endpoint
}

output "kubeconfig" {
  description = "Kubeconfig file content"
  value       = templatefile("${path.module}/kubeconfig.tpl", {
    cluster_name = aws_eks_cluster.k8s.name
    cluster_endpoint = aws_eks_cluster.k8s.endpoint
    cluster_ca = aws_eks_cluster.k8s.certificate_authority.0.data
  })
}