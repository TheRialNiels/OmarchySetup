#!/bin/bash

# Install all packages in order
./install-zsh.sh
./install-kitty.sh
./install-stow.sh
./install-dotfiles.sh
./install-hyprland-overrides.sh

./remove-webapps.sh
./remove-packages.sh
./set-shell.sh

