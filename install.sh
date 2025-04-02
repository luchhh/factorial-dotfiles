#!/bin/bash

chezmoi init

pushd ~/.local/share/chezmoi
  git remote add origin https://github.com/luchhh/factorial-dotfiles.git
  git branch -M main
  git pull origin main
popd

chezmoi apply

echo "source ~/.config/zsh/init.zsh" >> ~/.zshrc
source ~/.zshrc
