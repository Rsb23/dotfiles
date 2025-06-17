#!/bin/bash

dotfiles_dir="$HOME/Documents/dotfiles/"

git pull

ln -sf "$dotfiles_dir/.bashrc" "$HOME/.bashrc"
ln -sf "$dotfiles_dir/.desktop_aliases" "$HOME/.desktop_aliases"
ln -sf "$dotfiles_dir/.shared_aliases" "$HOME/.shared_aliases"
ln -sf "$dotfiles_dir/kitty.conf" "$HOME/.config/kitty/kitty.conf"
