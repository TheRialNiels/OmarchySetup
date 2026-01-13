#!/bin/bash

sudo localectl set-keymap --no-convert 'dvorak-es'
sudo localectl set-x11-keymap latam pc105 dvorak

sudo mkinitcpio -P
