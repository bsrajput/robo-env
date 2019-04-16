#!/bin/sh
# Robo Env is to install and configure my Debian Stretch 9 machines.
# Fail on error
set -e

# Pick script location
SETUP_DIR=$(pwd)

# Create installers placeholder
mkdir -p $SETUP_DIR/installers

# Update repo and libraries
echo "Updating packages..."
sudo apt-get update
echo "Upgrading system..."
sudo apt-get upgrade

# Base Packages
echo "Setting up utilities..."
sudo apt-get install sudo -y
sudo apt-get install vim -y
sudo apt-get install emacs25 -y
sudo apt-get install fonts-inconsolata -y
sudo apt-get install curl -y
sudo apt-get install wget -y
sudo apt-get install git -y
sudo apt-get install awscli -y
sudo apt-get install tmux -y
sudo apt-get install fonts-indic -y
sudo apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') -y
sudo apt-get install make -y
sudo apt-get install gcc -y
sudo apt-get install perl -y
sudo apt-get install unzip -y
sudo apt-get install terminator -y
sudo apt-get install rlwrap -y
sudo apt-get install mutt -y
sudo apt-get install zsh -y
sudo apt-get install openvpn -y
sudo apt-get install resolvconf -y
sudo apt-get install python3-pip -y
sudo apt-get install htop -y
