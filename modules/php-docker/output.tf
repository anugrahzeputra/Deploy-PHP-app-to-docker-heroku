output "docker_container_name" {
  value       = "${docker_container.php-heroku.*.name}"
  description = "Docker Container Name"
}

