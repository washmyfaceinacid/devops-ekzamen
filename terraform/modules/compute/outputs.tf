output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.node.id
}

output "instance_public_ip" {
  description = "EC2 public IPv4"
  value       = aws_instance.node.public_ip
}
