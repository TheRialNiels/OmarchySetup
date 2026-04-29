#!/bin/bash

_checkIsInstalled() {
  local package=$1

  # Check if the package is installed
  if pacman -Qq "$package" &>/dev/null; then
    echo 0 # true
    return
  else
    echo 1 # false
    return
  fi
}

pkg_names=(
  "wget"
  "tree-sitter-cli"
)

# Initialize an array to hold the names of packages that need to be installed
packagesToInstall=()

# Loop through all the packages
for package in ${pkg_names[@]}; do
  # Check if the package is installed based on the package manager
  if [[ $(_checkIsInstalled "$package") == 0 ]]; then
    packagesToInstall+=("${package}")
  fi
done

# Check if there are any packages that need to be installed
if [[ ${#packagesToInstall[@]} == 0 ]]; then
  echo "All packages are already installed"
else
  for package in "${packagesToInstall[@]}"; do
    echo "Installing ${package}..."
    sudo pacman -S --noconfirm "$package"

    # Check if the package was installed successfully
    if [[ $? == 0 ]]; then
      echo "Package '${package}' installed successfully"
    else
      echo "Failed to install package '${package}'"
    fi
  done
fi
