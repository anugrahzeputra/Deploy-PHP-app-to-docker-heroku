resource "docker_image" "php-heroku" {
  name = "ilosaurus/php-heroku"
}

resource "docker_container" "php-heroku" {
  name = "a.z.e.p-php-heroku"
  image = docker_image.php-heroku.latest

  ports {
    internal = 80
    external = 8001
  }
}

