export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="devcontainers"   # the theme the image ships with, so your prompt looks the same
plugins=(git)
source "$ZSH/oh-my-zsh.sh"

# carried over from .devcontainer/bash_aliases; it comes after oh-my-zsh because oh-my-zsh defines its own ll
alias ll='ls -laFh'
