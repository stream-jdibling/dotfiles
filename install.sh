#!/usr/bin/env bash
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"

if ! command -v zsh >/dev/null; then
    sudo apt-get update
    sudo apt-get install -y zsh
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
fi

custom="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
for repo in zsh-users/zsh-autosuggestions zsh-users/zsh-syntax-highlighting; do
    dest="$custom/plugins/${repo#*/}"
    [ -d "$dest" ] || git clone --depth 1 "https://github.com/$repo" "$dest"
done

ln -sf "$here/.zshrc" "$HOME/.zshrc"

zsh_path="$(command -v zsh)"
if [ "$(getent passwd "$(id -un)" | cut -d: -f7)" != "$zsh_path" ]; then
    sudo chsh -s "$zsh_path" "$(id -un)"
fi