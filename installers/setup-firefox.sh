#!/bin/sh

# Fail on error
set -e

# Update deps
sudo apt-get update 
sudo apt-get upgrade
FIREFOX_VERSION="66.0.1"

echo "Installing FIREFOX..."
wget --no-check-certificate  https://download-installer.cdn.mozilla.net/pub/firefox/releases/${FIREFOX_VERSION}/linux-x86_64/en-US/firefox-${FIREFOX_VERSION}.tar.bz2 
sudo tar xf firefox-${FIREFOX_VERSION}.tar.bz2
sudo cp -r firefox /home/aaa/bin

echo "Done!"
