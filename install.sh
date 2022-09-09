#!/bin/bash
pacman -Syu --noconfirm
./setup_dotfiles.sh
./desktop.sh
./editors.sh
./browsers.sh
./wallpapers.sh
