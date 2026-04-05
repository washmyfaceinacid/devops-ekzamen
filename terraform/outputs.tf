output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.node.id
}

output "instance_public_ip" {
  description = "EC2 public IPv4"
  value       = aws_instance.node.public_ip
}

output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.main.id
}

output "bucket_name" {
  description = "S3 bucket name"
  value       = aws_s3_bucket.main.bucket
}
