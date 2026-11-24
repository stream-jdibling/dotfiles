export ZSH="$HOME/.oh-my-zsh"
if [ -f "$ZSH/custom/themes/devcontainers.zsh-theme" ]; then
    ZSH_THEME="devcontainers"
else
    ZSH_THEME="robbyrussell"
fi

# ~/scratch is bind-mounted from the host, so history survives a rebuild
[ -d "$HOME/scratch" ] && HISTFILE="$HOME/scratch/.zsh_history"

# zsh-syntax-highlighting must be last
plugins=(git golang aws docker gh z zsh-autosuggestions zsh-syntax-highlighting)
source "$ZSH/oh-my-zsh.sh"

HISTSIZE=100000
SAVEHIST=100000
setopt SHARE_HISTORY HIST_IGNORE_ALL_DUPS HIST_IGNORE_SPACE HIST_REDUCE_BLANKS

alias ll='ls -laFh'