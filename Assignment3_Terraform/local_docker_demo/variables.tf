variable "docker_host" {
  description = "Docker daemon address (Docker Desktop on Windows)"
  type        = string
  default     = "npipe:////./pipe/docker_engine"
}

variable "container_name" {
  description = "Name of the web server container"
  type        = string
  default     = "terraform-web"
}

variable "external_port" {
  description = "Host port on which the web page is published"
  type        = number
  default     = 8080
}
