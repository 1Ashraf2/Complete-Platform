variable "aws_region" {
  description = "AWS region to deploy the infrastructure"
  type        = string
  default     = "us-west-1"
}

variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
  default     = "self-storage-cluster"
}

variable "node_instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
  default     = "t3.medium"
}

variable "desired_capacity" {
  description = "The desired number of worker nodes"
  type        = number
  default     = 3
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 5
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "environment" {
  type = string
  default = "prod"
}