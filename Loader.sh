#!/bin/bash
# ==========================================
# CRACKEN ULTIMATE INSTALLER
# Engineered by Nayeem Dev
# ==========================================


BINARY_URL="https://github.com/plumsoftwaredev-bit/FFMB/releases/download/v1.0/installer"
INSTALL_PATH="/usr/local/bin/ny-crackenvps"

# 2. UI HELPERS
RESET="\033[0m"
GREEN="\033[32m"
MAGENTA="\033[35m"
BOLD="\033[1m"

clear
echo -e "${MAGENTA}${BOLD}"
echo "   CRACKEN ULTIMATE INSTALLER"
echo "   Powered by Nayeem Dev"
echo -e "${RESET}"

# 3. DOWNLOAD
echo -e "${GREEN}[*] Downloading Core Binary...${RESET}"

# Attempt to use wget for a cleaner bar, fall back to curl if missing
if command -v wget >/dev/null 2>&1; then
    wget -q --show-progress -O "$INSTALL_PATH" "$BINARY_URL"
else
    # -# forces the progress bar, -L follows redirects
    curl -L -# -o "$INSTALL_PATH" "$BINARY_URL"
fi

# 4. VERIFY DOWNLOAD
if [ ! -f "$INSTALL_PATH" ]; then
    echo -e "${MAGENTA}[!] Error: Download failed. Check internet connection.${RESET}"
    exit 1
fi

# 5. PERMISSIONS & EXECUTION
chmod +x "$INSTALL_PATH"

echo -e "${GREEN}[*] Launching Wizard...${RESET}"
sleep 1


"$INSTALL_PATH" < /dev/tty
