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
  "1password-beta"
  "1password-cli"
  "pinta"
  "typora"
)

# Initialize an array to hold the names of packages that need to be removed
packagesToRemove=()

# Loop through all the packages
for package in ${pkg_names[@]}; do
  # Check if the package is installed based on the package manager
  if [[ $(_checkIsInstalled "$package") == 0 ]]; then
      packagesToRemove+=("${package}")
  fi
done

# Check if there are any packages that need to be removed
if [[ ${#packagesToRemove[@]} == 0 ]]; then
  echo "All ${packageManager} packages are already removed"
else
  for package in "${packagesToRemove[@]}"; do
    echo "Removing ${package}..."
    sudo pacman -Rns --noconfirm "$package"

    # Check if the package was removed successfully
    if [[ $? == 0 ]]; then
        echo "Package '${package}' removed successfully"
    else
        echo "Failed to remove package '${package}'"
    fi
  done
fi

