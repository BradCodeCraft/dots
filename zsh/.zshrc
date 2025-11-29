# Path to Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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
