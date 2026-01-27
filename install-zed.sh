#!/bin/bash

# Install zed
sudo pacman -S zed && setsid gtk-launch dev.zed.Zed

# Update GPU Drivers
sudo pacman -S mesa vulkan-radeon lib32-vulkan-radeon
