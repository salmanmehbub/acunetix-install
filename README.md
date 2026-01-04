Acunetix Installation Guide (Linux)

This guide explains how to install Acunetix using the automated installer script.
Tested on Kali Linux and other Debian-based distributions.

📌 Prerequisites

Linux system (Kali / Ubuntu / Debian)

Root or sudo access

Internet connection

🚀 Quick Installation

Important: Become root or use sudo before running the commands below.

1️⃣ Download the Installer Script
wget https://raw.githubusercontent.com/salmanmehbub/acunetix-install/refs/heads/main/acunetix_install.sh


Make the script executable:

chmod +x acunetix_install.sh


Run the installer:

./acunetix_install.sh

🧭 Installer Walkthrough

During installation, you will see prompts similar to the following.

Installer Banner
------------------Acunetix Install-----------------
Acunetix Installer Version: v_241106172
Copyright (c) Acunetix
--------------------------------------------------

OS Check
Checking os...
Warning: no dependencies configured.

License Agreement

You will be asked to review and accept the license agreement.

Please read the following License Agreement.
Press ENTER to continue
>>> 


➡️ Press ENTER

Accept the license terms? [yes|no]
[no] >>> yes


➡️ Type yes and press ENTER

Hostname Configuration
Configuring hostname...
Insert new hostname, or leave blank to use kali
Hostname [kali]:


➡️ Press ENTER to keep the default hostname (recommended for local installation).

Master User Configuration

You will now create the admin account for Acunetix.

Configuring the master user...
Email: admin@admin.com
Password:
Password again:


➡️ You may use any email address.
➡️ Remember this email and password — it will be used to log in.

✅ Installation Complete

After this step, Acunetix will install automatically without further input.

🌐 Access Acunetix Web Interface

Find your system IP address:

ip a


Open your browser and visit:

https://YOUR_KALI_LINUX_IP:3443


Log in using the email and password you created during installation.

📎 Notes

Default HTTPS port: 3443

Service name: acunetix

Installation is fully automated after user setup

<h1 align="center"> Acunetix-v24.10.241106172
</h1>

<p align="center"> Acunetix by Invicti Security is an application security testing tool built to help small & mid-size organizations around the world take control of their web security.
</p>

<p align="center"><img src="https://github.com/salmanmehbub/Acunetix-v24.10.241106172/blob/main/acunetix-premium.png">
 
<br></br>

## install config
```
wget -qO- https://raw.githubusercontent.com/salmanmehbub/Acunetix-v24.10.241106172/refs/heads/main/config.sh | sudo sh
```
## clone the repo
```
git clone https://github.com/salmanmehbub/Acunetix-v24.10.241106172.git
```
```
cd Acunetix-v24.10.241106172
```
## download the acunetix
```
wget https://github.com/salmanmehbub/Acunetix-v24.10.241106172/releases/download/acunetix/acunetix_24.10.241106172_x64.sh
```
## install the tools
```
sudo bash acunetix_24.10.241106172_x64.sh
```
## Once installed let's stop its service
```sh
sudo systemctl stop acunetix
```
## replace wvsc file:
```
sudo cp wvsc /home/acunetix/.acunetix/v_241106172/scanner/wvsc
```
```
sudo chown acunetix:acunetix /home/acunetix/.acunetix/v_241106172/scanner/wvsc
```
```
sudo chmod +x /home/acunetix/.acunetix/v_241106172/scanner/wvsc
```
## to add licenses
```sh
sudo rm /home/acunetix/.acunetix/data/license/*
```
```
sudo cp license_info.json /home/acunetix/.acunetix/data/license/
```
```
sudo cp wa_data.dat /home/acunetix/.acunetix/data/license/
```
```
sudo chown acunetix:acunetix /home/acunetix/.acunetix/data/license/license_info.json
```
```
sudo chown acunetix:acunetix /home/acunetix/.acunetix/data/license/wa_data.dat
```
```
sudo chmod 444 /home/acunetix/.acunetix/data/license/license_info.json
```
```
sudo chmod 444 /home/acunetix/.acunetix/data/license/wa_data.dat
```
```
sudo chattr +i /home/acunetix/.acunetix/data/license/license_info.json
```
```
sudo chattr +i /home/acunetix/.acunetix/data/license/wa_data.dat
```
## restart acunetix
```
sudo systemctl start acunetix
```
## Now login back to application
