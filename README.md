<h1 align="center">Acunetix Easy Installation Guide (Linux)</h1>

<p align="center">
Automated installation guide for Acunetix using the official installer script.<br>
Tested on Kali Linux and other Debian-based distributions.
</p>

<h2>📌 Prerequisites</h2>
<ul>
  <li>Linux system (Kali / Ubuntu / Debian)</li>
  <li>Root or sudo access</li>
  <li>Active internet connection</li>
</ul>

<hr>

<h2>🚀 Quick Installation</h2>

<p><b>Important:</b> Become root or use <code>sudo</code> before running the commands below.</p>

<pre>
wget https://raw.githubusercontent.com/salmanmehbub/acunetix-install/refs/heads/main/acunetix_install.sh
chmod +x acunetix_install.sh
./acunetix_install.sh
</pre>

<hr>

<h2>🧭 Installer Walkthrough</h2>

<h3>Installer Banner</h3>
<pre>
------------------Acunetix Install-----------------
Acunetix Installer Version: v_241106172
Copyright (c) Acunetix
--------------------------------------------------
</pre>

<h3>OS Check</h3>
<pre>
Checking os...
Warning: no dependencies configured.
</pre>

<h3>License Agreement</h3>
<p>You will be asked to review and accept the license agreement.</p>

<pre>
Please read the following License Agreement.
Press ENTER to continue
>>>
</pre>

<p><b>Action:</b> Press <b>ENTER</b></p>

<pre>
Accept the license terms? [yes|no]
[no] >>> yes
</pre>

<p><b>Action:</b> Type <b>yes</b> and press ENTER</p>

<hr>

<h3>Hostname Configuration</h3>

<pre>
Configuring hostname...
Insert new hostname, or leave blank to use kali
Hostname [kali]:
</pre>

<p><b>Action:</b> Press <b>ENTER</b> to keep the default hostname.</p>

<hr>

<h3>Master User Configuration</h3>

<p>Configure the admin account for Acunetix.</p>

<pre>
Configuring the master user...
Email: admin@admin.com
Password:
Password again:
</pre>

<p>
You may use <b>any email address</b>.<br>
Make sure to remember the email and password — they are required to log in.
</p>

<hr>

<h2>✅ Installation Complete</h2>

<p>
After this step, Acunetix will install automatically without further user input.
</p>

<hr>

<h2>🌐 Access Acunetix Web Interface</h2>

<p>Find your system IP address:</p>

<pre>
ip a
</pre>

<p>Open your browser and visit:</p>

<pre>
https://YOUR_KALI_LINUX_IP:3443
</pre>

<p>
Log in using the email and password created during installation.
</p>

<hr>

<h2>📎 Notes</h2>
<ul>
  <li>Default HTTPS port: <b>3443</b></li>
  <li>Service name: <code>acunetix</code></li>
  <li>Installation is fully automated after user setup</li>
</ul>

<hr>

<p align="center">
<b>Developed by Invicti Security</b><br>
Acunetix Web Vulnerability Scanner
</p>


<h1 align="center"> Acunetix-v24.10.241106172
</h1>

<p align="center"> Acunetix by Invicti Security is an application security testing tool built to help small & mid-size organizations around the world take control of their web security.
</p>


