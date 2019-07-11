#!/bin/bash
# Author: Abhishek Anand Amralkar
# This script installs Powerline fonts.

unset CDPATH
CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# install powerline fonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
if [ ! -e ~/.fonts ]; then
   mkdir ~/.fonts/
   fi

mv PowerlineSymbols.otf ~/.fonts/

if [ ! -e ~/.config/fontconfig/conf.d ]; then

   mkdir -p ~/.config/fontconfig/conf.d
fi

# clear fints cache
fc-cache -vf ~/.fonts/

### Move config file
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

sudo apt-get install dconf-cli -y
