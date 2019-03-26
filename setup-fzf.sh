# install fuzzy finder
if [ ! -e ~/.fzf ]; then
	echo "Installing fzf"
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
        ~/.fzf/install
fi
