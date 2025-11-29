# Path to Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Set theme
ZSH_THEME="simple"

# Load plugins
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Export
export EDITOR="nvim"
export VISUAL="nvim"

# Aliases
alias glor="git log --oneline --reverse"
alias c="clear"
