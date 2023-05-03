terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.16.0"
    }
  }
}


provider "linode" {
  token = "$API_TOKEN" # Update this
}

resource "linode_instance" "my_instance1" {
  label = "my-instance1"
  type = "g6-standard-2"
  region = "us-east"
  image = "linode/Fedora38"
  root_pass = "$PASSWORD" #update
}

resource "linode_instance" "my_instance2" {
  label = "my-instance2"
  type = "g6-standard-2"
  region = "ap-west"
  image = "linode/debian10"
  root_pass = "$PASSWORD" #update 
}

resource "linode_volume" "my_storage" {
  label = "my_storage"
  region = "us-central"
  size = 100
}
