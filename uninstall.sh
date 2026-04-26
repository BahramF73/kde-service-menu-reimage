#!/bin/bash

# Exit on error
set -e

# Determine if KDE is installed
if command -v kbuildsycoca6 >/dev/null 2>&1; then
    kde_version=6
elif command -v kbuildsycoca5 >/dev/null 2>&1; then
    kde_version=5
else
    echo "Plasma KDE 5 or Plasma KDE 6 environment required! Exit..."
    exit 1
fi

# Determine if running as root
if [[ $EUID -eq 0 ]]; then
    echo "Removing system-wide KDE service menu..."

    bin_dir="/usr/local/bin"
    desktop_dir="/usr/share/kio/servicemenus"
    doc_dir="/usr/share/doc/kde-service-menu-reimage"
else
    echo "Removing KDE service menu locally for user..."

    bin_dir="$HOME/.local/bin"
    desktop_dir="$HOME/.local/share/kio/servicemenus"
    doc_dir="$HOME/.local/share/doc/kde-service-menu-reimage"
fi

# Removing binaries
echo "removing ${bin_dir}/reimage-kdialog"
rm -f "${bin_dir}/reimage-kdialog"

# Removing service menus
echo "removing service menus from ${desktop_dir}"
rm -f "${desktop_dir}/reimage-compress-resize.desktop"
rm -f "${desktop_dir}/reimage-convert-rotate.desktop"
rm -f "${desktop_dir}/reimage-metadata.desktop"
rm -f "${desktop_dir}/reimage-tools.desktop"

# Removing documentation
if [ -d "$doc_dir" ]; then
    echo "removing documentation directory ${doc_dir}"
    rm -rf "$doc_dir"
fi

# Update KDE service cache
if [[ $kde_version -eq 6 ]]; then
    echo "Updating service cache (Plasma 6)"
    kbuildsycoca6 --noincremental >/dev/null 2>&1 || true
elif [[ $kde_version -eq 5 ]]; then
    echo "Updating service cache (Plasma 5)"
    kbuildsycoca5 --noincremental >/dev/null 2>&1 || true
fi

echo ""
echo "kde-service-menu-reimage has been removed. Good bye."
