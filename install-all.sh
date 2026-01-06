#!/bin/bash

# Install all packages in order
./install-zsh.sh
./install-zsh-plugins.sh
./install-kitty.sh
./install-stow.sh
./install-gemini-cli.sh
./install-dotfiles.sh
./install-hyprland-overrides.sh
#./install-hyprsunset-overrides.sh # Not working

./remove-webapps.sh
./remove-packages.sh
./set-zsh.sh
