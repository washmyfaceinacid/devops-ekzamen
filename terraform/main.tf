module "network" {
  source = "./modules/network"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  public_subnet_cidr_2 = var.public_subnet_cidr_2
  cluster_name         = var.cluster_name
}

module "compute" {
  source = "./modules/compute"

  instance_type     = var.instance_type
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.network.security_group_id
}

module "storage" {
  source = "./modules/storage"

  bucket_name = var.bucket_name
}

module "ecr" {
  source = "./modules/ecr"

  repository_name     = var.ecr_repository_name
  image_tag_mutability = var.ecr_image_tag_mutability
}

module "kubernetes" {
  source = "./modules/kubernetes"

  cluster_name           = var.cluster_name
  kubernetes_version     = var.kubernetes_version
  subnet_ids             = module.network.public_subnet_ids
  eks_node_instance_type = var.eks_node_instance_type
  eks_desired_capacity   = var.eks_desired_capacity
  eks_min_capacity       = var.eks_min_capacity
  eks_max_capacity       = var.eks_max_capacity
}
