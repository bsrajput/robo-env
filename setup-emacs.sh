# install my emacs
if [ ! -e ~/.emacs.d ]; then
    cd
    echo "Pulling emacs.d..."
    git clone https://github.com/engineertobe/emacs.d ~/.emacs.d
fi
