#!/bin/bash

# Install bibata cursor theme
if [ ! -d "/usr/share/icons/Bibata-Modern-Ice" ] &&
  [ ! -d "$HOME/.icons/Bibata-Modern-Ice" ]; then
  yay -S --noconfirm --needed bibata-cursor-theme
fi
