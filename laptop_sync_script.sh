#!/bin/bash

dotfiles_dir="$HOME/Documents/dotfiles/"

git pull

ln -s "$dotfiles_dir/.bashrc" "$HOME/.bashrc"
ln -s "$dotfiles_dir/.desktop_aliases" "$HOME/.desktop_aliases"
ln -s "$dotfiles_dir/.shared_aliases" "$HOME/.shared_aliases"
ln -s "$dotfiles_dir/kitty.conf" "$HOME/.config/kitty/kitty.conf"
