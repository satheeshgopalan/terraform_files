terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.16.0"
    }
  }
}


provider "linode" {
  token = "ea3a224daa3701deaf1a956feae3bb22cfbf5af69cd7d17f3980fc0f93b68d7f"
}

resource "linode_instance" "my_instance1" {
  label = "my-instance1"
  type = "g6-standard-2"
  region = "us-east"
  image = "linode/Fedora38"
  root_pass = "Satheesh123"
}

resource "linode_instance" "my_instance2" {
  label = "my-instance2"
  type = "g6-standard-2"
  region = "ap-west"
  image = "linode/debian10"
  root_pass = "Satheesh123"
}

resource "linode_volume" "my_storage" {
  label = "my_storage"
  region = "us-central"
  size = 100
}
