require 'serverspec'
require 'docker'

set :backend, :docker
set :docker_url, ENV['DOCKER_HOST']
set :docker_image, "quay.io/wantedly/crontab-docker:latest"
set :docker_container_create_options, {
  "Binds" => ["#{File.join(__FILE__, "..", "testdata", "crontab.txt")}:/app/crontab.txt"],
  "Cmd" => "/app/crontab.txt",
}

Excon.defaults[:ssl_verify_peer] = false
