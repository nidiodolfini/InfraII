#define o provedor 
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 2.16.0"
    }
  }
}

provider "docker" {
  host    = "npipe:////.//pipe//docker_engine"
  # host = "unix:///var/run/docker.sock" para linux
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "webserver_nginx"
  ports {
    internal = 80
    external = 8081
  }
}
