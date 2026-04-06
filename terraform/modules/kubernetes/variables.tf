variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for EKS"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for EKS cluster and node group"
  type        = list(string)
}

variable "eks_node_instance_type" {
  description = "instance type for EKS worker nodes"
  type        = string
}

variable "eks_desired_capacity" {
  description = "desired number of EKS worker nodes"
  type        = number
}

variable "eks_min_capacity" {
  description = "minimum number of EKS worker nodes"
  type        = number
}

variable "eks_max_capacity" {
  description = "maximum number of EKS worker nodes"
  type        = number
}
