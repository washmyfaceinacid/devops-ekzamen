output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Primary public subnet ID"
  value       = aws_subnet.public.id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = [aws_subnet.public.id, aws_subnet.public_2.id]
}

output "security_group_id" {
  description = "Main security group ID"
  value       = aws_security_group.main.id
}
