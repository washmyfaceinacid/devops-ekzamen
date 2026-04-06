output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = aws_eks_cluster.main.name
}

output "eks_cluster_endpoint" {
  description = "EKS API endpoint"
  value       = aws_eks_cluster.main.endpoint
}

output "eks_node_group_name" {
  description = "EKS managed node group name"
  value       = aws_eks_node_group.main.node_group_name
}

output "eks_cluster_ca" {
  description = "EKS cluster CA certificate data"
  value       = data.aws_eks_cluster.main.certificate_authority[0].data
}

output "eks_auth_token" {
  description = "EKS auth token"
  value       = data.aws_eks_cluster_auth.main.token
  sensitive   = true
}
