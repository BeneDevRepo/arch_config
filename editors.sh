#!/bin/bash

# Install editors:
pacman -S --noconfirm\
	neovim\
	code

# Uninstall legacy vim
pacman -R --noconfirm\
	vim

# Symlink 'vim' to use neovim instead neovim
ln -s /usr/bin/nvim /usr/bin/vim
