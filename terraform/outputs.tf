output "vpc_id" {
  description = "VPC ID"
  value       = module.network.vpc_id
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = module.compute.instance_id
}

output "instance_public_ip" {
  description = "EC2 public IPv4"
  value       = module.compute.instance_public_ip
}

output "security_group_id" {
  description = "Security Group ID"
  value       = module.network.security_group_id
}

output "bucket_name" {
  description = "S3 bucket name"
  value       = module.storage.bucket_name
}

output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = module.kubernetes.eks_cluster_name
}

output "eks_cluster_endpoint" {
  description = "EKS API endpoint"
  value       = module.kubernetes.eks_cluster_endpoint
}

output "eks_node_group_name" {
  description = "EKS managed node group name"
  value       = module.kubernetes.eks_node_group_name
}
