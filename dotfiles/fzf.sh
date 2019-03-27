# Setup fzf
# ---------
if [[ ! "$PATH" == */home/aaa/.fzf/bin* ]]; then
  export PATH="$PATH:/home/aaa/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/aaa/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/aaa/.fzf/shell/key-bindings.zsh"

