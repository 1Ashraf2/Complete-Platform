output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "API Server endpoint"
  value       = module.eks.cluster_endpoint
}

output "kubeconfig" {
  description = "Kubeconfig file content"
  value       = module.eks.kubeconfig
}