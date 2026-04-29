#!/bin/bash

# Install zed
sudo pacman -S --noconfirm zed
# sudo pacman -S --noconfirm zed && setsid gtk-launch dev.zed.Zed

# Update GPU Drivers
sudo pacman -S --noconfirm mesa vulkan-radeon lib32-vulkan-radeon
