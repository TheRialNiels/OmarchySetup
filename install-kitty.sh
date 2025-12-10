#!/bin/bash

# Install kitty
yay -S --noconfirm --needed kitty

# Update xdg-terminals.list to prioritize the proper terminal
cat > ~/.config/xdg-terminals.list << EOF
# Terminal emulator preference order for xdg-terminal-exec
# The first found and valid terminal will be used
kitty.desktop
EOF

