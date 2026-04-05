output "vpc_id" {
  description = "VPC ID"
  value       = digitalocean_vpc.main.id
}

output "droplet_id" {
  description = "Droplet ID"
  value       = digitalocean_droplet.node.id
}

output "droplet_ipv4" {
  description = "Droplet public IPv4"
  value       = digitalocean_droplet.node.ipv4_address
}

output "firewall_id" {
  description = "Firewall ID"
  value       = digitalocean_firewall.main.id
}

output "bucket_name" {
  description = "Spaces bucket name"
  value       = digitalocean_spaces_bucket.main.name
}
