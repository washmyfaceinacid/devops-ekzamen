variable "do_token" {
  description = "digitalocean API token"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "digitalocean region closest to ukraine"
  type        = string
  default     = "fra1"
}

variable "vpc_ip_range" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.10.10.0/24"
}

variable "droplet_size" {
  description = "size suitable for minikube/kubernetes"
  type        = string
  default     = "s-4vcpu-8gb"
}

variable "droplet_image" {
  description = "ubuntu 24 image slug"
  type        = string
  default     = "ubuntu-24-04-x64"
}

variable "droplet_ssh_key_ids" {
  description = "SSH"
  type        = list(string)
  default     = []
}

variable "bucket_name" {
  description = "storage bucket name"
  type        = string
  default     = "vasylyshyn-bucket"
}
