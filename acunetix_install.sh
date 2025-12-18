#!/bin/bash

# setup_Acunetix on Linux
echo "[*] Updating package lists..."
apt-get update
echo "[*] Upgrading installed packages..."
apt-get upgrade -y

echo "[*] Installing Acunetix Premium..."
#install config
#wget -qO- https://raw.githubusercontent.com/xiv3r/Acunetix-v24.10.241106172/refs/heads/main/config.sh | sudo sh

git clone https://github.com/xiv3r/Acunetix-v24.10.241106172.git

cd Acunetix-v24.10.241106172

wget https://github.com/xiv3r/Acunetix-v24.10.241106172/releases/download/acunetix/acunetix_24.10.241106172_x64.sh

bash acunetix_24.10.241106172_x64.sh

echo "[*] Stop Acuentix..."
systemctl stop acunetix

#replace wvsc file:
cp wvsc /home/acunetix/.acunetix/v_241106172/scanner/wvsc
chown acunetix:acunetix /home/acunetix/.acunetix/v_241106172/scanner/wvsc
chmod +x /home/acunetix/.acunetix/v_241106172/scanner/wvsc

#to add licenses
rm /home/acunetix/.acunetix/data/license/*
cp license_info.json /home/acunetix/.acunetix/data/license/
cp wa_data.dat /home/acunetix/.acunetix/data/license/
chown acunetix:acunetix /home/acunetix/.acunetix/data/license/license_info.json

chown acunetix:acunetix /home/acunetix/.acunetix/data/license/wa_data.dat
chmod 444 /home/acunetix/.acunetix/data/license/license_info.json
chmod 444 /home/acunetix/.acunetix/data/license/wa_data.dat
chattr +i /home/acunetix/.acunetix/data/license/license_info.json
chattr +i /home/acunetix/.acunetix/data/license/wa_data.dat

echo "[*] Restart the acunetix"
systemctl restart acunetix
