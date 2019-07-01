#!/usr/bin/env bash

# Author: Abhishek Anand Amralkar
# This script installs Terraform

set -o errexit
set -o pipefail
set -o nounset

unset CDPATH
CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


echo "Adding the repo"
./setup-repo.sh
retval=$?
echo "Debian Buster is upto date"
if [ $retval -ne 0 ]; then
    echo "Error in Debian Buster package please check"
fi

echo "Installing the required packages"
./setup-package.sh
retval=$?
echo "Debian Buster is upto date"
if [ $retval -ne 0 ]; then
    echo "Error in Debian Buster package please check"
fi

./setup-terraform.sh
retval=$?
echo "Terraform is upto date"
if [ $retval -ne 0 ]; then
    echo "Error in Terraform installation please check"
fi

./setup-packer.sh
retval=$?
echo "Packer is upto date"
if [ $retval -ne 0 ]; then
    echo "Error in Packer installation please check"
fi

./setup-docker.sh
retval=$?
echo "Docker is upto date"
if [ $retval -ne 0 ]; then
    echo "Error in Docker installation please check"
fi


./setup-clojure.sh
retval=$?
echo "Clojure and LEIN is upto date"
if [ $retval -ne 0 ]; then
    echo "Error in Clojure and LEIN installation please check"
fi
