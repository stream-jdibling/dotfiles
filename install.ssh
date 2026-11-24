#!/usr/bin/env bash
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
ln -sf "$here/.zshrc" "$HOME/.zshrc"
sudo chsh -s /usr/bin/zsh "$(id -un)"
