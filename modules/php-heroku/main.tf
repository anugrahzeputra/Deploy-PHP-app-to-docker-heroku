resource "heroku_app" "anugrahzeputra36nolsatuquiz" {
  name = "anugrahzeputra36nolsatuquiz"
  region = "us"
}

resource "heroku_build" "anugrahzeputra36nolsatuquiz" {
  app = heroku_app.anugrahzeputra36nolsatuquiz.name
  buildpacks = ["https://github.com/heroku/heroku-buildpack-php"]

  source = {
    url = "https://github.com/ilosaurus/php-getting-started/archive/1.1.2.tar.gz"
    version = "1.1.2"
  }
}

