#!/bin/bash/

dotfiles_dir="~/Documents/dotfiles/"

git pull

ln -s "$dotfiles_dir/.bashrc" "~/.bashrc"
ln -s "$dotfiles_dir/.desktop_aliases" "~/.desktop_aliases"
ln -s "$dotfiles_dir/.shared_aliases" "~/.shared_aliases"
ln -s "$dotfiles_dir/kitty.conf" "~/.config/kitty/kitty.conf"
