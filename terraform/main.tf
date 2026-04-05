resource "digitalocean_vpc" "main" {
  count    = var.existing_vpc_id == "" ? 1 : 0
  name     = "vasylyshyn-vpc"
  region   = var.region
  ip_range = var.vpc_ip_range
}

locals {
  effective_vpc_id = var.existing_vpc_id != "" ? var.existing_vpc_id : digitalocean_vpc.main[0].id
}

resource "digitalocean_droplet" "node" {
  name       = "vasylyshyn-node"
  region     = var.region
  size       = var.droplet_size
  image      = var.droplet_image
  vpc_uuid   = local.effective_vpc_id
  monitoring = true
  ssh_keys   = var.droplet_ssh_key_ids
}

resource "digitalocean_firewall" "main" {
  name = "vasylyshyn-firewall"

  droplet_ids = [digitalocean_droplet.node.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "8000"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "8001"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "8002"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "8003"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}

resource "digitalocean_spaces_bucket" "main" {
  name   = var.bucket_name
  region = var.region
}
