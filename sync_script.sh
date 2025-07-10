#!/bin/bash

dotfiles_dir="$HOME/Documents/dotfiles/"

git pull

if [ $HOSTNAME = "B650-AORUS-ELITE-AX-ICE" ]; then
    ln -sf "$dotfiles_dir/.desktop_aliases" "$HOME/.desktop_aliases"
else
    if [ $HOSTNAME != "B650-AORUS-ELITE-AX-ICE" ]; then
	ln -sf "$dotfiles_dir/.laptop_aliases" "$HOME/.laptop_aliases"
    fi
fi

ln -sf "$dotfiles_dir/.bashrc" "$HOME/.bashrc"
ln -sf "$dotfiles_dir/.shared_aliases" "$HOME/.shared_aliases"
ln -sf "$dotfiles_dir/kitty.conf" "$HOME/.config/kitty/kitty.conf"
ln -sf "$dotfiles_dir/nvim" "$HOME/.config/"
