#!/bin/sh

# Fail on error
set -e

# Update deps
sudo apt-get update 
sudo apt-get upgrade

echo "Installing Zoom Client..."
wget --no-check-certificate  https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i zoom_amd64.db
echo "Done!"
