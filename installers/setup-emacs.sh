#!/bin/bash
# Author: Abhishek Anand Amralkar
# This script clone the my emacs configuration on my machine.
# Fail on error


set -e
# install my emacs
if [ ! -e ~/.emacs.d ]; then
    cd
    echo "Pulling emacs.d..."
    git clone https://github.com/engineertobe/emacs.d ~/.emacs.d
fi
