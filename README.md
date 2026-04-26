kde-service-menu-reimage
========================

This is a KDE Service Menu for image manipulation and metadata management.
It adds several useful actions to the Dolphin/Konqueror context menu (right-click)
for image files.

DEPENDENCIES
------------

To use all features of this service menu, you need the following software installed:

*   KDE Plasma 5 or 6 (required)
*   kdialog (required for UI)
*   ImageMagick (required for conversion, resizing, etc.)
*   jhead (required for Exif metadata operations)
*   webp (required for WebP format support)

INSTALLATION
------------

You can install the service menu either system-wide (for all users) or locally
(only for the current user).

### System-wide Installation (requires sudo)
Run:
sudo ./install.sh

### Local Installation
Run:
./install.sh


UNINSTALLATION
--------------

To remove the service menu, run the uninstallation script corresponding to your
installation method.

### System-wide Uninstallation (requires sudo)
Run:
sudo ./uninstall.sh

### Local Uninstallation
Run:
./uninstall.sh


USAGE
-----

After installation, the new menu items will appear in the context menu
(right-click) of image files in Dolphin or Konqueror, typically under the
"Actions" or "Reimage" submenu.

--------------------------------------------------------------------------------
Copyright (C) 2018-2026 Giuseppe Benigno <giuseppe.benigno@gmail.com>
