#!/bin/sh

# Fail on error
set -e

# Update deps
sudo apt-get update 
sudo apt-get upgrade

VAGRANT_VERSION="2.2.3"

echo "Installing Vagrant..."

wget --no-check-certificate https://releases.hashicorp.com/vagrant/${VAGRANT_VERSION}/vagrant_${VAGRANT_VERSION}_x86_64.deb 

sudo dpkg -i vagrant_${VAGRANT_VERSION}_x86_64.deb

echo "Installing required plug-ins"
vagrant plugin install vagrant-vbguest
vagrant plugin update vagrant-vbguest
vagrant plugin install vagrant-triggers

echo "Restarting vagrant services..."
sudo service vboxdrv restart

echo "---------------------------------"
echo "Please restart VirtualBox if you are using it"
echo "Set VAGRANT_HOME if you intend to change the default location for boxes"
echo "If you see vboxdrv probe errors, please sign the key as mentioned in\nhttp://askubuntu.com/questions/760671/could-not-load-vboxdrv-after-upgrade-to-ubuntu-16-04-and-i-want-to-keep-secu"
echo "---------------------------------"
echo "Done!"
