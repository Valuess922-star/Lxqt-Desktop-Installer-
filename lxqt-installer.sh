#!/data/data/com.termux/files/usr/bin/bash

# ========================================================
# Automated Termux LXQt Installer (Termux-X11 Version)
# Description: Installs X11 repo, LXQt, QTerminal, and 
# Termux-X11 with robust error handling and checks.
# ========================================================

set -eu

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

# Ensure script is running inside Termux on Android
if [ -z "${PREFIX:-}" ] || [[ "$PREFIX" != *"/com.termux/"* ]]; then
    echo -e "${RED}[✖] Error: This script must be run inside Termux on Android!${NC}"
    exit 1
fi

echo -e "${YELLOW}[*] Updating package index...${NC}"
pkg update -y

echo -e "${YELLOW}[*] Installing repositories, LXQt, and dependencies...${NC}"
if ! pkg install -y x11-repo lxqt qterminal termux-x11-nightly; then
    echo -e "${RED}[✖] Error: Package installation failed. Please check your internet connection and try again.${NC}"
    exit 1
fi

echo -e "${YELLOW}[*] Creating desktop launcher script...${NC}"
LAUNCHER="$HOME/start-lxqt.sh"

cat << 'EOF' > "$LAUNCHER"
#!/data/data/com.termux/files/usr/bin/bash
set -eu

# Terminate any existing lingering X11 sessions
pkill -f termux-x11 || true

echo "Starting Termux-X11 server..."
termux-x11 :0 &
sleep 1

export DISPLAY=:0

# Check if dbus-launch exists before executing
if command -v dbus-launch &> /dev/null; then
    dbus-launch --exit-with-session startlxqt
else
    echo "dbus-launch not found, starting LXQt directly..."
    startlxqt
fi
EOF

chmod +x "$LAUNCHER"

echo ""
echo -e "${GREEN}[✔] Installation completed successfully!${NC}"
echo -e "${YELLOW}[*] How to launch LXQt:${NC}"
echo "    1. Ensure you have the official 'Termux:X11' APK installed on your Android device."
echo "    2. Open the 'Termux:X11' app from your app drawer."
echo "    3. Run your launcher script in Termux:"
echo "       $LAUNCHER"
