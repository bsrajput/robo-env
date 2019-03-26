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
