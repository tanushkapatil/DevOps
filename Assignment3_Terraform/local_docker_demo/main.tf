# Pull the nginx web server image
resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = false
}

# Run a web server container with a custom page
resource "docker_container" "web" {
  name  = var.container_name
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.external_port
  }

  upload {
    file    = "/usr/share/nginx/html/index.html"
    content = "<h1>Provisioned with Terraform</h1><p>DevOps Assignment 3 - Tanushka Patil</p>"
  }
}
