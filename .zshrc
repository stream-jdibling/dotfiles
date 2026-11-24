export ZSH="$HOME/.oh-my-zsh"
if [ -f "$ZSH/custom/themes/devcontainers.zsh-theme" ]; then
    ZSH_THEME="devcontainers"   # the theme today's image ships with
else
    ZSH_THEME="robbyrussell"    # oh-my-zsh's default, for images without it
fi
plugins=(git)
source "$ZSH/oh-my-zsh.sh"

# after oh-my-zsh, which defines its own ll
alias ll='ls -laFh'