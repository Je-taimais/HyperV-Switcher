<h1 align="center">Hyper-V Switcher</h1>

<p align="center">
  A lightweight Windows batch script for <strong>toggling Hyper‑V</strong>.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/version-1.0.0-blue" alt="Version" />
  <img src="https://img.shields.io/badge/license-MIT-green" alt="License" />
  <img src="https://img.shields.io/badge/platform-Windows%20%7C%2010%2B-lightgrey" alt="Platform" />
  <img src="https://img.shields.io/badge/language-Batchfile-orange" alt="Language" />
</p>

<p align="center">
  <strong><a href="#installation">Installation</a></strong> •
  <strong><a href="#what-is-it">What is it?</a></strong> •
  <strong><a href="#problem">Problem</a></strong> •
  <strong><a href="#usage">Usage</a></strong> •
  <strong><a href="#screenshot">Screenshot</a></strong> •
  <strong><a href="#license">License</a></strong>
</p>

<p align="center">
  <a href="./README.md">English</a> •
  <a href="./README.zh-CN.md">简体中文</a>
</p>

---

## What is it?

**Hyper-V Switcher** is a lightweight Windows batch script that lets you **toggle Hyper-V on or off with a single click** — no more digging into Command Prompt, no more memorizing `bcdedit` and `dism` commands.

It handles the full stack:
- **Hypervisor launch type** (`bcdedit /set hypervisorlaunchtype`)
- **Virtual Machine Platform** feature (`dism /online /enable-feature ...`)
- **Windows Hypervisor Platform** feature (`dism /online /enable-feature ...`)

## Problem It Solves

| Scenario | Without This Tool | With Hyper-V Switcher |
|:---|:---|:---|
| **Enable Hyper-V for WSL2/Docker** | Open CMD as admin → run `bcdedit` → run `dism` × 2 → reboot | Double-click `.bat` → press `1` → reboot ✅ |
| **Disable Hyper-V for VMware/VirtualBox** | Open CMD as admin → run `bcdedit` → run `dism` × 2 → reboot | Double-click `.bat` → press `2` → reboot ✅ |
| **Switch back and forth frequently** | Re-type all commands every time | Same menu, every time |

Hyper-V conflicts with other virtualization platforms like **VMware**, **VirtualBox**, and some **games with anti-cheat**. This tool makes switching painless.

## Installation

1. [Download](../../archive/refs/heads/main.zip) or clone this repo:
   ```bash
   git clone https://github.com/Je-taimais/HyperV-Switcher.git
   ```
2. **Right-click** `切换HyperV.bat` → **Run as Administrator**

That's it. No install, no dependencies.

## Usage

```
==============================================
              Hyper-V 切换工具
==============================================
1. 开启 Hyper-V 全套（重启生效）
2. 关闭 Hyper-V 全套（重启生效）
0. 退出程序
==============================================

请输入操作序号：_
```

| Option | Action | Requires Reboot? |
|:---:|:---|:---:|
| `1` | Enable full Hyper-V stack | Yes |
| `2` | Disable full Hyper-V stack | Yes |
| `0` | Exit | No |

> ⚠️ **Administrator privileges are required.** The script will detect and remind you if not running as admin.

## Screenshot

<img src="screenshots/hyperv-switcher-demo.png" width="700" alt="Hyper-V Switcher Screenshot" />

## License

This project is licensed under the [MIT License](LICENSE).

---

<p align="center">
  Made with ❤️ by <a href="https://github.com/Je-taimais">Je-taimais</a> · <a href="README.zh-CN.md">简体中文</a>
</p>
