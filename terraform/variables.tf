variable "region" {
  description = "aws region closest to ukraine"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_cidr" {
  description = "cidr block for vpc"
  type        = string
  default     = "10.10.10.0/24"
}

variable "public_subnet_cidr" {
  description = "cidr block for public subnet"
  type        = string
  default     = "10.10.10.0/25"
}

variable "public_subnet_cidr_2" {
  description = "cidr block for second public subnet"
  type        = string
  default     = "10.10.10.128/25"
}

variable "instance_type" {
  description = "ec2 instance type suitable for minikube/kubernetes"
  type        = string
  default     = "t3.small"
}

variable "bucket_name" {
  description = "s3 bucket name"
  type        = string
  default     = "vasylyshyn-bucket-s3"
}

variable "ecr_repository_name" {
  description = "ECR repository name for application images"
  type        = string
  default     = "vasylyshyn-repo"
}

variable "ecr_image_tag_mutability" {
  description = "ECR image tag mutability"
  type        = string
  default     = "MUTABLE"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "vasylyshyn-eks-cluster"
}

variable "kubernetes_version" {
  description = "kubernetes version for EKS"
  type        = string
  default     = "1.30"
}

variable "eks_node_instance_type" {
  description = "instance type for EKS worker nodes"
  type        = string
  default     = "t3.small"
}

variable "eks_desired_capacity" {
  description = "desired number of EKS worker nodes"
  type        = number
  default     = 2
}

variable "eks_min_capacity" {
  description = "minimum number of EKS worker nodes"
  type        = number
  default     = 1
}

variable "eks_max_capacity" {
  description = "maximum number of EKS worker nodes"
  type        = number
  default     = 3
}
