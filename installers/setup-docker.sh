#!/bin/sh
# Setups Docker on my debian
# Fail on error
set -e

# Grab the script to setup docker
wget -qO- https://get.docker.com/ | sh

# Access docker with non-sudo privileges
sudo usermod -a -G docker aaa


sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
