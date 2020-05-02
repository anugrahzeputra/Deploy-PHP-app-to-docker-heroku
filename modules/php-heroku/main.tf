resource "heroku_app" "someherokuapp" {
  name = "someherokuapp"
  region = "us"
}

resource "heroku_build" "someherokuapp" {
  app = heroku_app.someherokuapp.name
  buildpacks = ["https://github.com/heroku/heroku-buildpack-php"]

  source = {
    url = "https://github.com/ilosaurus/php-getting-started/archive/1.1.2.tar.gz"
    version = "1.1.2"
  }
}

