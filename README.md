# Termux lxqt Installer

A script for setting up a graphical desktop environment inside **Termux** on Android.

---

## Features

LXQt Desktop Installer (`install-lxqt.sh`)
Automates the setup of the **LXQt** desktop environment optimized for **Termux-X11**:
- Non-intrusive package installation.
- Automatically generates a `$HOME/start-lxqt.sh` launcher script.
- Includes error handling and fallback checks for `dbus-launch`.

---

## Getting Started

### Prerequisites
1. Install [Termux](https://github.com/termux/termux-app/releases) on your Android device.
2. For the desktop environment, download and install the official [Termux:X11 APK](https://github.com/termux/termux-x11/releases).

### Installation & Setup

Open Termux and run the following commands:

```bash
# Clone the repository
git clone [https://github.com/Valuess922-star/Lxqt-Desktop-Installer.git](https://github.com/Valuess922-star/Lxqt-Desktop-Installer.git)

# Enter the directory
cd lxqt-Desktop-Installer

# Make the scripts executable
chmod +x install-lxqt.sh
