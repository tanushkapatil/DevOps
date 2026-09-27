output "container_id" {
  description = "ID of the web server container"
  value       = docker_container.web.id
}

output "container_name" {
  description = "Name of the web server container"
  value       = docker_container.web.name
}

output "url" {
  description = "URL of the deployed web page"
  value       = "http://localhost:${var.external_port}"
}
