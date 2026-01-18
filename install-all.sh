#!/bin/bash

# Install all packages in order
./install-zsh.sh
./install-zsh-plugins.sh
./install-kitty.sh
./install-stow.sh
./install-vial.sh
./install-gemini-cli.sh
./install-zellij.sh
./install-bibata-cursor.sh
./install-dotfiles.sh
./install-hyprland-overrides.sh
#./install-hyprsunset-overrides.sh # Not working

./set-omarchy-configs.sh
# ./set-keyboard.sh
./remove-webapps.sh
./remove-packages.sh
./set-zsh.sh
