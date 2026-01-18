#!/bin/bash

omarchy-font-set "JetBrainsMono Nerd Font Mono"
omarchy-theme-set Nord

STATE_FILE=~/.local/state/omarchy/toggles/suspend-on

if [[ ! -f $STATE_FILE ]]; then
  # Enable
  omarchy-toggle-suspend
fi
