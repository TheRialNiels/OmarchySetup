#!/bin/bash

set -e

HYPRSUNSET_CONFIG="$HOME/.config/hypr/hyprsunset.conf"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OVERRIDES_CONFIG="$SCRIPT_DIR/hyprsunset-overrides.conf"
SOURCE_LINE="source = $OVERRIDES_CONFIG"

# Check if hyprsunset config exists
if [ ! -f "$HYPRSUNSET_CONFIG" ]; then
    echo "Hyprsunset config not found at $HYPRSUNSET_CONFIG"
    echo "Please install hyprsunset first"
    exit 1
fi

# Check if overrides config exists
if [ ! -f "$OVERRIDES_CONFIG" ]; then
    echo "Overrides config not found at $OVERRIDES_CONFIG"
    exit 1
fi

# Check if source line already exists in hyprsunset.conf
if grep -Fxq "$SOURCE_LINE" "$HYPRSUNSET_CONFIG"; then
    echo "Source line already exists in $HYPRSUNSET_CONFIG"
else
    echo "Adding source line to $HYPRSUNSET_CONFIG"
    echo "" >> "$HYPRSUNSET_CONFIG"
    echo "$SOURCE_LINE" >> "$HYPRSUNSET_CONFIG"
    echo "Source line added successfully"
fi

echo "Hyprsunset overrides setup complete!"

