
<div align="center">

# 🐙 CRACKEN V5 ULTIMATE
### Professional Pterodactyl Infrastructure Manager

[![Version](https://img.shields.io/badge/Release-v5.0-ff00d4?style=for-the-badge&logo=rocket&logoColor=white)](https://github.com/owneraniex/Cracken-BASH/releases)
[![Core](https://img.shields.io/badge/Written%20In-GO%201.21-00ADD8?style=for-the-badge&logo=go&logoColor=white)](https://github.com/owneraniex/Cracken-BASH)
[![Platform](https://img.shields.io/badge/Platform-Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)](https://github.com/owneraniex/Cracken-BASH)
[![Engineered By](https://img.shields.io/badge/Engineered%20By-Nayeem%20Dev-7000ff?style=for-the-badge&logo=github)](https://github.com/owneraniex)

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=18,2,30&height=220&section=header&text=CRACKEN%20V5&fontSize=80&fontColor=ff00d4&animation=fadeIn&fontAlignY=35&desc=The%20Ultimate%20Pterodactyl%20Installer&descSize=20&descAlignY=55&descAlign=50" alt="header" />
</p>

*Deploy, Manage, Repair, and Secure your Game Server Infrastructure in seconds.*

[ **QUICK START** ](#-quick-start) • [ **FEATURES** ](#-features) • [ **COMMANDS** ](#-dashboard--commands) • [ **REQUIREMENTS** ](#-system-requirements)

</div>

---

## ⚡ Quick Start

**Cracken V5** replaces hours of manual Linux configuration with a single command. 
Run this on a fresh VPS (Ubuntu/Debian) as `root`:

```bash
bash <(curl -s [https://raw.githubusercontent.com/owneraniex/Cracken-BASH/main/Loader.sh](https://raw.githubusercontent.com/owneraniex/Cracken-BASH/main/Loader.sh))
````

> **🔒 Security Note:** This command initiates our **Secure Loader**, which verifies your server environment before retrieving the encrypted, binary-compiled installer payload.

-----

## 💎 Why Cracken?

Most installers are simple Bash scripts that break easily. **Cracken V5** is a compiled **Go Application** designed for stability and security.

| Feature | Description |
| :--- | :--- |
| **🏎️ Turbo Engine** | Written in **Golang**. Executes logic 10x faster than standard shell scripts. Zero lag. |
| **🛡️ Binary Lock** | Source code is compiled into machine code. Your installation logic is tamper-proof and secure. |
| **🧠 Smart Network** | Intelligent **DNS Helper** pauses installation to help you configure Cloudflare/SSL records correctly. |
| **🔧 Auto-Healer** | Built-in diagnostics tool automatically fixes **Error 500**, Permission issues, and Cache corruption. |
| **♻️ Lifecycle Mgr** | Use the dashboard to **Update**, **Backup**, **Restore**, or **Uninstall** components anytime. |
| **📂 Backup Core** | Creates `.tar.gz` snapshots of your Panel & Database stored safely in `/var/backups/cracken`. |

-----

## 📦 Installation Modes

The wizard will ask you what you want to build:

### 1\. 🏗️ Full Stack (Recommended)

Installs **everything** needed to host a hosting company on one machine.

  * **Includes:** Panel, Wings, MariaDB, Redis, Nginx, PHP 8.1, Docker, Certbot.

### 2\. 🎮 Wings Only (Remote Node)

Lightweight installation for adding more servers to your panel.

  * **Includes:** Docker, Wings Daemon.
  * **Optimized:** Skips PHP/MySQL to save RAM.

### 3\. 💻 Panel Only (Web Interface)

Installs only the control panel interface.

  * **Includes:** Nginx, PHP, MariaDB, Redis.

-----

## 🖥️ Dashboard & Commands

Once installed, you don't need to remember complex Linux commands. Just type:

```bash
ny-crackenvps
```

This opens the **Nayeem Dev Management Console**:

```text
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

## ⚙️ System Requirements

Ensure your infrastructure meets these specifications for maximum stability.

### 🐧 Operating System

  * **Ubuntu:** 20.04 LTS (Focal) / 22.04 LTS (Jammy)
  * **Debian:** 11 (Bullseye) / 12 (Bookworm)
  * *❌ CentOS/AlmaLinux is NOT supported.*

### 🖥️ Hardware

| Component | Minimum | Recommended |
| :--- | :--- | :--- |
| **RAM** | 1GB | 4GB+ |
| **CPU** | 1 vCore | 2 vCores+ |
| **Storage** | 10GB SSD | 50GB NVMe |
| **Virt** | KVM / Metal | KVM |

### 🌐 Network Ports

The installer configures UFW automatically, but ensure your Cloud Firewall allows:

  * `80` (HTTP)
  * `443` (HTTPS)
  * `8080` (Wings Port)
  * `2022` (SFTP Port)

-----

## 🛠️ Troubleshooting Guide

**Problem:** "I see Error 500 on my panel."

> **Fix:** Run `ny-crackenvps`, select **Option 2 (Tools)**, then **Option 1 (Fix Permissions)**.

**Problem:** "SSL Certification Failed."

> **Fix:** Ensure your Domain DNS (A Record) points to your VPS IP *before* running the installer. If using Cloudflare, turn off the Orange Cloud (Proxy) during installation.

**Problem:** "Command not found."

> **Fix:** You may need to restart your SSH session or run `source ~/.bashrc` to load the alias.

-----

## 📜 License & Credits

**Cracken V5** is a proprietary automation tool engineered by **Nayeem Dev**.

  * **Pterodactyl®** is a registered trademark of the Pterodactyl Software project.
  * This installer is an unofficial tool and is not affiliated with Pterodactyl.

\<div align="center"\>
<br>

### Engineered with 💜 by **Nayeem Dev**

[](https://github.com/owneraniex)
[](https://discord.gg)

\</div\>

```
```
