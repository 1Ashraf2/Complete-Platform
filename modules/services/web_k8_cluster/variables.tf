variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
}

variable "node_instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
}

variable "desired_capacity" {
  description = "The desired number of worker nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "cluster_role_arn" {
  description = "IAM Role ARN for EKS Cluster"
  type        = string
}

variable "worker_role_arn" {
  description = "IAM Role ARN for EKS Worker Nodes"
  type        = string
}