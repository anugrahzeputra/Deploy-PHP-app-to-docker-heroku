module "php-heroku" {
      source        = "./modules/php-heroku"
}

module "php-docker" {
      source        = "./modules/php-docker"

}

output "url" {
  value = "${module.php-heroku.url}"
  description = "url dari php heroku"
}

output "docker_container_name" {
  value       = "${module.php-docker.docker_container_name}"
  description = "Docker Container Name"
}

