# Termux Utilities

A collection of safe, lightweight, and automated Bash scripts designed to optimize storage and set up a graphical desktop environment inside **Termux** on Android.

---

## Features

### 1.  Deep Cleaner (`clean.sh`)
Reclaim valuable storage space by safely removing unnecessary junk:
- **Package Caches**: Clears APT archives, `pkg` caches, and removes orphaned dependencies (`autoremove`).
- **Temporary Files & Logs**: Deletes contents of `$TMPDIR` and lingering `*.log`, `*.bak`, and `*.tmp` files.
- **Cache Directories**: Purges user cache files (`~/.cache`).
- **Dev Tool Caches**: Automatically cleans `pip` and `npm` caches if Python or Node.js are installed.

### 2. LXQt Desktop Installer (`install-lxqt.sh`)
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
git clone [https://github.com/YOUR_USERNAME/YOUR_REPOSITORY_NAME.git](https://github.com/YOUR_USERNAME/YOUR_REPOSITORY_NAME.git)

# Enter the directory
cd YOUR_REPOSITORY_NAME

# Make the scripts executable
chmod +x clean.sh install-lxqt.sh
