#!/bin/bash
# Author: Abhishek Anand Amralkar
# This script installs Terraform

unset CDPATH
CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TF_VERSION=${TF_VERSION:-"0.11.12"}
TF_BIN=${TF_BIN:-"~/bin/terraform"}

install_terraform (){
    if [ ! -e "$TF_BIN" ];
     then
           echo "Installing Terraform..."
           wget --no-check-certificate  https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip 
           sudo unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
           sudo mv terraform /home/aaa/bin/
           echo "Done!"
    else
        


install_leingen () {
    if [ ! -e "$LEIN_BIN" ];
    then
      cd /tmp && curl -O https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && sudo chmod 755 lein && sudo mv lein /usr/bin && sudo chmod a+x ~/bin/lein
    else
      echo "Lein is installed"
      fi
}
