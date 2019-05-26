#!/bin/sh
# Author: Abhishek Anand Amralkar
# This script installs Docker and Docker Compose
# Fail on error
set -e
DOCKER_COMPOSE_VERSION=${DOCKER_COMPOSE_VERSION:-"1.23.2"}
DOCKER_COMPOSE_PATH=${DOCKER_COMPOSE_PATH:-"/us"}
USER_NAME=${USER_NAME:-"aaa"}

install_docker() {
    if [ ! -e ]
   echo "Installing Docker"
   wget -qO- https://get.docker.com/ | sh
   echo "Docker Installed"
   echo "Add user in "
   sudo usermod -a -G docker $USER_NAME
}

install_dockercompose(){
    if [ ! -e "$DOCKER_COMPOSE_VERSION"];
    then
        echo "Downloading Docker Compose"
        sudo curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
        echo "Docker Compose installed"
        echo "Change permission to execute"
        sudo chmod +x /usr/local/bin/docker-compose
    else
        echo "Docker Compose is installed"
        fi
}
