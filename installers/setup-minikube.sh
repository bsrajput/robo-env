#!/bin/bash
# Author: Abhishek Anand Amralkar
# This script installs minikube.

unset CDPATH
CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
MINIKUBE_VERSION=${MINIKUBE_VERSION:-"latest"}
MINIKUBE_BIN=${MINIKUBE_BIN:-"/usr/local/bin/minikube"}

# Fail on error
set -e

# Update deps
sudo apt-get update
sudo apt-get upgrade


install_minikube(){
    if [ ! -e "$MINIKUBE_BIN"];
    then
        curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
            && sudo install minikube-linux-amd64 /usr/local/bin/minikube
    else
        echo "Minikube is installed"
    fi
}

main(){
    install_minikube
}

main
