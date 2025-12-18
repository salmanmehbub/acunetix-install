#!/bin/bash

# setup_Acunetix on Linux
echo "[*] Updating package lists..."
apt-get update -y

echo "[*] Installing Acunetix Premium..."
#install config
#wget -qO- https://raw.githubusercontent.com/salmanmehbub/Acunetix-v24.10.241106172/refs/heads/main/config.sh | sudo sh

git clone https://github.com/salmanmehbub/Acunetix-v24.10.241106172.git

cd Acunetix-v24.10.241106172

wget -O acunetix_24.10.241106172_x64.sh https://github.com/salmanmehbub/acunetix-install/releases/download/Asset/acunetix_24.10.241106172_x64.sh

bash acunetix_24.10.241106172_x64.sh

echo "[*] Stop Acuentix..."
systemctl stop acunetix

#!/bin/bash

# --- 1. SETUP PATHS ---
SCANNER_EXE="/home/acunetix/.acunetix/v_241106172/scanner/wvsc"
LICENSE_DIR="/home/acunetix/.acunetix/data/license"

# --- 2. THE "UNLOCK" STEP (Crucial for Updates) ---
# If this is an update, these files are currently immutable (+i).
# We remove the attribute first. If it's a new install, this just ignores the error.
echo "[*] Unlocking existing files (if any)..."
chattr -i "$SCANNER_EXE" 2>/dev/null
chattr -i "$LICENSE_DIR"/* 2>/dev/null

# --- 3. REPLACE WVSC FILE ---
echo "[*] Replacing wvsc binary..."
# Ensure directory exists for new installs
mkdir -p "$(dirname "$SCANNER_EXE")"
cp -f wvsc "$SCANNER_EXE"
chown acunetix:acunetix "$SCANNER_EXE"
chmod +x "$SCANNER_EXE"

# --- 4. UPDATE LICENSES ---
echo "[*] Updating license files..."
mkdir -p "$LICENSE_DIR"
# rm -f won't complain if the directory is empty (new install)
rm -f "$LICENSE_DIR"/*

cp license_info.json "$LICENSE_DIR/"
cp wa_data.dat "$LICENSE_DIR/"

# Set permissions and ownership
chown acunetix:acunetix "$LICENSE_DIR/license_info.json"
chown acunetix:acunetix "$LICENSE_DIR/wa_data.dat"
chmod 444 "$LICENSE_DIR/license_info.json"
chmod 444 "$LICENSE_DIR/wa_data.dat"

# --- 5. THE "LOCK" STEP ---
# This prevents Acunetix from overwriting your files during runtime.
chattr +i "$LICENSE_DIR/license_info.json"
chattr +i "$LICENSE_DIR/wa_data.dat"

# --- 6. RESTART ---
echo "[*] Restarting the acunetix service..."
systemctl restart acunetix

echo "[+] Done!"
