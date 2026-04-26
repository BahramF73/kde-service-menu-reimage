# KDE Service Menu Reimage (Plasma 6)

A powerful and comprehensive KDE Plasma 6 Service Menu for advanced image manipulation and metadata management directly from Dolphin or Konqueror.

![Version](https://img.shields.io/badge/version-2.6-blue)
![License](https://img.shields.io/badge/license-GPL--3-green)

## 🌟 Features

### 🖼️ Image Manipulation
*   **Resize**: Scaled by percentage or specific dimensions.
*   **Convert**: Transform to any format supported by ImageMagick (WebP, PNG, JPG, etc.).
*   **Rotate & Flip**: Auto-orient, custom angle, flip, or flop.
*   **Filters**: Add borders, drop shadows, or sepia effect.
*   **Optimization**: Advanced auto-optimization for web (strip data, interlace, etc.).

### 📂 Metadata Management (Exif/IPTC/XMP)
*   **Rename**: Rename files based on Exif/File date and time.
*   **Sync**: Set file date from Exif, or Exif date from file date/name.
*   **Edit**: Add, view, or delete comments and metadata sections.
*   **Strip**: Remove all metadata for "pure" images.

### 🛠️ Advanced Tools
*   **Animated GIF**: Create animations from multiple selected images.
*   **Favicons**: Generate a complete set of web favicons.
*   **Montage**: Append/Montage pictures together.

## 📋 Requirements

To use all features, ensure the following tools are installed:
*   `ImageMagick` (required for conversion, resizing, etc.)
*   `jhead` (required for Exif metadata operations)
*   `webp` (required for WebP support)
*   `kdialog` (for GUI interactions)

## 🚀 Installation

### Local Installation (Recommended)
```bash
./install.sh
```

### System-wide Installation
```bash
sudo ./install.sh
```

## 🗑️ Uninstallation
```bash
./uninstall.sh
```

## 📄 License
This project is licensed under the GPL-3 License - see the [doc/copyright](doc/copyright) file for details.

## ✉️ Contact
**Giuseppe Benigno** - [giuseppe.benigno@gmail.com](mailto:giuseppe.benigno@gmail.com)

---
*Part of the KDE Service Menu suite.*
