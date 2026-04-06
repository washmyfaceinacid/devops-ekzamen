variable "vpc_cidr" {
  description = "cidr block for vpc"
  type        = string
}

variable "public_subnet_cidr" {
  description = "cidr block for first public subnet"
  type        = string
}

variable "public_subnet_cidr_2" {
  description = "cidr block for second public subnet"
  type        = string
}

variable "cluster_name" {
  description = "EKS cluster name for subnet tags"
  type        = string
}
