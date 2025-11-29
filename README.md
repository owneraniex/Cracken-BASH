# <p align="center">🐙 <span style="color:#ff00d4;font-size:64px;"><b>CRACKEN V5 ULTIMATE</b></span> 🐙</p>
### <p align="center"><b>Professional Pterodactyl Infrastructure Manager</b></p>

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=18,2,30&height=220&section=header&text=CRACKEN%20V5&fontSize=80&fontColor=ff00d4&animation=fadeIn&fontAlign=center"/>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Release-v5.0-ff00d4?style=for-the-badge&logo=rocket&logoColor=white"/>
  <img src="https://img.shields.io/badge/Written%20In-GO%201.21-00ADD8?style=for-the-badge&logo=go&logoColor=white"/>
  <img src="https://img.shields.io/badge/Platform-Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black"/>
  <img src="https://img.shields.io/badge/Engineered%20By-Nayeem%20Dev-7000ff?style=for-the-badge&logo=github"/>
</p>

<br/>
<p align="center">
  <b>
    Deploy, Manage, Repair, and Secure your Game Server Infrastructure in seconds.
    <br/>
    The Ultimate Automation Suite for <span style="color: #ff00d4;">Pterodactyl</span> Servers.
  </b>
</p>

<p align="center">
  <a href="#-quick-start"><b>QUICK START</b></a> • 
  <a href="#-features"><b>FEATURES</b></a> • 
  <a href="#-dashboard--commands"><b>COMMANDS</b></a> • 
  <a href="#-system-requirements"><b>REQUIREMENTS</b></a>
</p>

---

## <p align="center" style="font-size:32px;"><b>⚡ Quick Start</b></p>

<p align="center"><b>Cracken V5 replaces hours of manual Linux configuration with a single command.</b></p>

<p align="center">
  <img src="https://cdn.dribbble.com/users/446101/screenshots/2098130/rocket.gif" width="260"/>
</p>

<p align="center">
  <b>Run this on a fresh VPS (Ubuntu/Debian) as <span style="color:#ff00d4;">root</span>:</b>
</p>

```bash
wget -qO setup.sh https://raw.githubusercontent.com/owneraniex/Crael-PANEL/main/Loader.sh && sudo bash setup.sh
```

<p align="center">
  <b>🔒 Security Note:</b> This command initiates our <span style="color:#00ADD8;">Secure Loader</span>, which verifies your server environment before retrieving the encrypted, binary-compiled installer payload.
</p>

-----

## <p align="center" style="font-size:32px;"><b>💎 Why Cracken?</b></p>

<p align="center">
  Most installers are simple Bash scripts that break easily. <b>Cracken V5</b> is a compiled <span style="color:#00ADD8;">Go Application</span> designed for <b>stability</b> and <b>security</b>.
</p>

<table align="center">
  <tr>
    <th>Feature</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>🏎️ <b>Turbo Engine</b></td>
    <td>Written in <b>Golang</b>. Executes logic 10x faster than shell scripts. Zero lag.</td>
  </tr>
  <tr>
    <td>🛡️ <b>Binary Lock</b></td>
    <td>Source code is compiled into machine code. Your installation logic is tamper-proof and secure.</td>
  </tr>
  <tr>
    <td>🧠 <b>Smart Network</b></td>
    <td>Intelligent <b>DNS Helper</b> pauses installation to help you configure Cloudflare/SSL records correctly.</td>
  </tr>
  <tr>
    <td>🔧 <b>Auto-Healer</b></td>
    <td>Built-in diagnostics tool automatically fixes <b>Error 500</b>, Permission issues, and Cache corruption.</td>
  </tr>
  <tr>
    <td>♻️ <b>Lifecycle Mgr</b></td>
    <td>Use the dashboard to <b>Update</b>, <b>Backup</b>, <b>Restore</b>, or <b>Uninstall</b> components anytime.</td>
  </tr>
  <tr>
    <td>📂 <b>Backup Core</b></td>
    <td>Creates <b>.tar.gz</b> snapshots of your Panel & Database stored safely in <b>/var/backups/cracken</b>.</td>
  </tr>
</table>

-----

## <p align="center" style="font-size:32px;"><b>📦 Installation Modes</b></p>

<p align="center">The wizard will ask you what you want to build:</p>

### <p align="center"><b>1. 🏗️ Full Stack (Recommended)</b></p>
<p align="center">
  Installs <b>everything</b> needed to host a hosting company.<br/>
  <i>Includes: Panel, Wings, MariaDB, Redis, Nginx, PHP 8.1, Docker, Certbot.</i>
</p>

---

### <p align="center"><b>2. 🎮 Wings Only (Remote Node)</b></p>
<p align="center">
  Lightweight installation for adding more servers.<br/>
  <i>Includes: Docker, Wings Daemon. <br/>Optimized: Skips PHP/MySQL to save RAM.</i>
</p>

---

### <p align="center"><b>3. 💻 Panel Only (Web Interface)</b></p>
<p align="center">
  Installs only the control panel interface.<br/>
  <i>Includes: Nginx, PHP, MariaDB, Redis.</i>
</p>

-----

## <p align="center" style="font-size:32px;"><b>🖥️ Dashboard & Commands</b></p>

<p align="center">
  Once installed, forget complex Linux commands. Just type:<br/>
  <b>
    <code>ny-crackenvps</code>
  </b><br/>
  This opens the <span style="color:#7000ff;">Nayeem Dev Management Console</span>:
</p>

```
╭──────────────────────────────────────────────╮
│  CRACKEN V5 DASHBOARD                        │
│  Host: panel.yourdomain.com [FULL STACK]     │
╰──────────────────────────────────────────────╯

  ● ONLINE System Status

  [1] Manage Services   ➜ Restart Panel, Wings, Nginx
  [2] Repair Tools      ➜ Fix Error 500, Clear Cache
  [3] Backup System     ➜ Snapshot Database & Files
  [4] Update System     ➜ Pull Latest Pterodactyl Build
  [5] Uninstall         ➜ Remove All Data
  [6] Exit
```

-----

## <p align="center" style="font-size:32px;"><b>⚙️ System Requirements</b></p>
<p align="center">Ensure your infrastructure meets these specs for maximum stability.</p>

### <p align="center"><b>🐧 Operating System</b></p>

<p align="center">
  <b>Ubuntu:</b> 20.04 LTS (Focal) / 22.04 LTS (Jammy) <br/>
  <b>Debian:</b> 11 (Bullseye) / 12 (Bookworm) <br/>
  <b>❌ CentOS/AlmaLinux is NOT supported.</b>
</p>

### <p align="center"><b>🖥️ Hardware</b></p>

<p align="center">
  <b>RAM:</b> 1GB (Minimum) / 4GB+ (Recommended) <br/>
  <b>CPU:</b> 1 vCore (Minimum) / 2 vCores+ (Recommended) <br/>
  <b>Storage:</b> 10GB SSD (Minimum) / 50GB NVMe (Recommended) <br/>
  <b>Virt:</b> KVM / Metal <br/>
</p>

### <p align="center"><b>🌐 Network Ports</b></p>

<p align="center">
  The installer configures UFW, but ensure your Cloud Firewall allows:<br/>
  <b>80 (HTTP)</b> • <b>443 (HTTPS)</b> • <b>8080 (Wings Port)</b> • <b>2022 (SFTP Port)</b>
</p>

-----

## <p align="center" style="font-size:32px;"><b>🛠️ Troubleshooting Guide</b></p>

<p align="center"><b>Problem:</b> "I see Error 500 on my panel."</p>
<p align="center">
  <b>Fix:</b> Run <code>ny-crackenvps</code>, select <b>Option 2 (Tools)</b>, then <b>Option 1 (Fix Permissions)</b>.
</p>

<p align="center"><b>Problem:</b> "SSL Certification Failed."</p>
<p align="center">
  <b>Fix:</b> Ensure your Domain DNS (A Record) points to your VPS IP <i>before</i> running the installer. If using Cloudflare, disable Proxy during installation.
</p>

<p align="center"><b>Problem:</b> "Command not found."</p>
<p align="center">
  <b>Fix:</b> Restart your SSH session or run <code>source ~/.bashrc</code> to load the alias.
</p>

-----

## <p align="center" style="font-size:32px;"><b>📜 License & Credits</b></p>

<p align="center">
  <b>Cracken V5</b> is a proprietary automation tool engineered by <span style="color:#7000ff;">Nayeem Dev</span>.<br/>
  <i>
    Pterodactyl® is a registered trademark of the Pterodactyl Software project.<br/>
    This installer is an unofficial tool and is not affiliated with Pterodactyl.
  </i>
</p>

---

<br>
<p align="center" style="font-size:22px;">
  <b>Engineered with 💜 by <span style="color:#7000ff;">Nayeem Dev</span></b>
</p>
<p align="center">
  <a href="https://github.com/owneraniex"><b>GitHub</b></a> • <a href="https://discord.gg/KdCAZ3M5EQ"><b>Discord</b></a>
</p>
