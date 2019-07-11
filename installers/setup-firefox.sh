#!/bin/bash
# Author: Abhishek Anand Amralkar
# This script installs Clojure and Lein.

unset CDPATH
CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FIREFOX_VERSION=${FIREFOX_VERSION:-"66.0.1"}
FIREFOX_BIN=${FIREFOX_BIN:-"/usr/local/bin/firefox/firefox"}
set -e

# Update deps
sudo apt-get update 
sudo apt-get upgrade

install_firefox(){
    if [ ! -e "$FIREFOX_BIN"];
    then
        echo "Installing FIREFOX..."
        wget --no-check-certificate  https://download-installer.cdn.mozilla.net/pub/firefox/releases/${FIREFOX_VERSION}/linux-x86_64/en-US/firefox-${FIREFOX_VERSION}.tar.bz2 
        sudo tar xf firefox-${FIREFOX_VERSION}.tar.bz2
        sudo cp -r firefox /usr/local/bin
        echo "Done!"
    else
        echo "Firfox is installed"
    fi
}

main () {
    install_firefox
}

