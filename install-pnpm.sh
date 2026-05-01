#!/bin/bash

# Install pnpm
if ! command -v pnpm &>/dev/null; then
  brew install pnpm
fi
