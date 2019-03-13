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

# Shell (zsh) and syntax highlighting
echo "Setting up oh-my-zsh..."
sudo apt-get install -y zsh
if [ ! -e ~/.oh-my-zsh ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
    wget https://raw.githubusercontent.com/abhishekamralkar/tools/master/zshrc ~/.zshrc
    sudo chsh -s /bin/zsh
fi


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

# install my emacs
if [ ! -e ~/.emacs.d ]; then
    cd
    echo "Pulling emacs.d..."
    git clone https://github.com/engineertobe/emacs.d ~/.emacs.d
fi

# install fuzzy finder
if [ ! -e ~/.fzf ]; then
	echo "Installing fzf"
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
        ~/.fzf/install
fi

