#!/bin/bash
# Author: Abhishek Anand Amralkar
# This script clone the my emacs configuration on my machine.
# Fail on error


set -e
# install my emacs
sudo apt install build-essential libjansson-dev -y

sudo apt install autoconf automake autotools-dev debhelper dpkg-dev imagemagick libacl1-dev libasound2-dev libdbus-1-dev libgconf2-dev libgif-dev libgnutls28-dev libgpm-dev libgtk-3-dev libjpeg-dev liblockfile-dev libm17n-dev libmagick++-dev libncurses5-dev libotf-dev libpng-dev librsvg2-dev libselinux1-dev libsystemd-dev libtiff5-dev libwebkit2gtk-4.0-dev libxaw7-dev libxml2-dev sharutils texinfo xaw3dg-dev -y
sudo apt-get build-dep emacs
mkdir -p ~/code
cd ~/code
rm -rf emacs
time git clone https://git.savannah.gnu.org/git/emacs.git
cd emacs
time ./autogen.sh
time ./configure --with-modules --with-json --with-xwidgets --with-imagemagick --with-mailutils
time make -j9
time sudo make install
