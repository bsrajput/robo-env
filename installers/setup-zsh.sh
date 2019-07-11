#!/bin/sh
# Author: Abhishek Anand Amralkar
# Shell (zsh) and syntax highlighting

unset CDPATH
CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ZSH_BIN=${ZSH_BIN:-"/usr/bin/zsh"}

install_zsh () {
    if [ ! -e "$ZSH_BIN" ];
    then
      git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
      git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
      git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
      git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
      sudo rm -rf ~/.zshrc
      wget https://raw.githubusercontent.com/abhishekamralkar/robo-env/master/dotfiles/zshrc /tmp
      mv /tmp/zshrc ~/.zsh/
      sudo chsh -s /bin/zsh

    else
      echo "oh-my-zsh is installed ..."
    fi
}

main () {
    install_zsh
}

main
