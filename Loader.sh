#!/bin/bash
# ==========================================
# CRACKEN ULTIMATE LOADER
# Engineered by Nayeem Dev
# ==========================================


SECRET_P1="aHR0cHM6Ly9naXRodWIuY29tL293bmVy"
SECRET_P2="YW5pZXgvQ3JhY2tlbi9yZWxlYXNlcy9kb3du"
SECRET_P3="bG9hZC92NS4wL255LWNyYWNrZW52cHM="

# Reconstruct URL at runtime
BINARY_URL=$(echo "${SECRET_P1}${SECRET_P2}${SECRET_P3}" | base64 -d)
INSTALL_PATH="/usr/local/bin/ny-crackenvps"

# --- UI COLORS ---
RESET="\033[0m"
GREEN="\033[38;5;46m"
MAGENTA="\033[38;5;213m"
BOLD="\033[1m"

# --- HEADER ---
clear
echo -e "${MAGENTA}${BOLD}"
echo "   CRACKEN ULTIMATE"
echo "   Engineered by Nayeem Dev"
echo -e "${RESET}"

# --- ROOT CHECK ---
if [[ $EUID -ne 0 ]]; then
   echo -e "${MAGENTA}[!] Error: This script must be run as root.${RESET}"
   echo "    Use: sudo bash <(curl ...)"
   exit 1
fi

# --- DOWNLOADER ---
echo -e "${GREEN}[*] Initializing Secure Channel...${RESET}"

# Use wget if available (cleaner bar), else curl
if command -v wget >/dev/null 2>&1; then
    wget -q --show-progress -O "$INSTALL_PATH" "$BINARY_URL"
else
    curl -L -o "$INSTALL_PATH" "$BINARY_URL" --progress-bar
fi

# --- VERIFICATION ---
if [ ! -f "$INSTALL_PATH" ]; then
    echo -e "${MAGENTA}[!] Error: Security Verification Failed.${RESET}" 
    echo "    The payload could not be retrieved."
    exit 1
fi

chmod +x "$INSTALL_PATH"

# --- EXECUTION ---
echo -e "${GREEN}[*] Launching Wizard...${RESET}"
sleep 1


exec "$INSTALL_PATH" < /dev/tty
