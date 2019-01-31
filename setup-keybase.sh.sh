#!/bin/sh

# Fail on error
set -e

# Update deps
sudo apt-get update 
sudo apt-get upgrade


echo "Installing Keybase..."
curl -O https://prerelease.keybase.io/keybase_amd64.deb
# if you see an error about missing `libappindicator1`
# from the next command, you can ignore it, as the
# subsequent command corrects it
sudo dpkg -i keybase_amd64.deb
sudo apt-get install -f
run_keybase


echo "Done!"
