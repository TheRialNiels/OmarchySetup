#!/bin/bash

# Install all packages in order
./install-zsh.sh
./install-kitty.sh
./install-stow.sh
./install-dotfiles.sh
./install-hyprland-overrides.sh
#./install-hyprsunset-overrides.sh # Not working

./remove-webapps.sh
./remove-packages.sh
./set-zsh.sh

