# ⚡ Hyper-V Switcher

<p align="center">
  <img src="https://img.shields.io/badge/version-1.0.0-blue" alt="Version" />
  <img src="https://img.shields.io/badge/license-MIT-green" alt="License" />
  <img src="https://img.shields.io/badge/platform-Windows%20%7C%2010%2B-lightgrey" alt="Platform" />
  <img src="https://img.shields.io/badge/language-Batchfile-orange" alt="Language" />
  <a href="https://github.com/Je-taimais/HyperV-Switcher/stargazers"><img src="https://img.shields.io/github/stars/Je-taimais/HyperV-Switcher?style=flat&logo=github" alt="GitHub Stars" /></a>
  <a href="https://github.com/Je-taimais/HyperV-Switcher/issues"><img src="https://img.shields.io/github/issues/Je-taimais/HyperV-Switcher?logo=github" alt="Issues" /></a>
</p>

---

<p align="center">
  <strong><a href="#installation">Installation</a></strong> •
  <strong><a href="#what-is-it">What is it?</a></strong> •
  <strong><a href="#problem">Problem</a></strong> •
  <strong><a href="#usage">Usage</a></strong> •
  <strong><a href="#screenshot">Screenshot</a></strong> •
  <strong><a href="#license">License</a></strong>
</p>

<p align="center">
  <a href="#english">English</a> •
  <a href="#简体中文">简体中文</a>
</p>

---

## 🌐 English

<a id="english"></a>

### What is it?

**Hyper-V Switcher** is a lightweight Windows batch script that lets you **toggle Hyper-V on or off with a single click** — no more digging into Command Prompt, no more memorizing `bcdedit` and `dism` commands.

It handles the full stack:
- **Hypervisor launch type** (`bcdedit /set hypervisorlaunchtype`)
- **Virtual Machine Platform** feature (`dism /online /enable-feature ...`)
- **Windows Hypervisor Platform** feature (`dism /online /enable-feature ...`)

### Problem It Solves

| Scenario | Without This Tool | With Hyper-V Switcher |
|:---|:---|:---|
| **Enable Hyper-V for WSL2/Docker** | Open CMD as admin → run `bcdedit` → run `dism` × 2 → reboot | Double-click `.bat` → press `1` → reboot ✅ |
| **Disable Hyper-V for VMware/VirtualBox** | Open CMD as admin → run `bcdedit` → run `dism` × 2 → reboot | Double-click `.bat` → press `2` → reboot ✅ |
| **Switch back and forth frequently** | Re-type all commands every time | Same menu, every time |

Hyper-V conflicts with other virtualization platforms like **VMware**, **VirtualBox**, and some **games with anti-cheat**. This tool makes switching painless.

### Installation

1. [Download](../../archive/refs/heads/main.zip) or clone this repo:
   ```bash
   git clone https://github.com/Je-taimais/HyperV-Switcher.git
   ```
2. **Right-click** `切换HyperV.bat` → **Run as Administrator**

That's it. No install, no dependencies.

### Usage

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

### Screenshot

<a id="screenshot"></a>

<img src="screenshots/hyperv-switcher-demo.png" width="700" alt="Hyper-V Switcher Screenshot" />

---

## 🇨🇳 简体中文

<a id="简体中文"></a>

### 这是什么？

**Hyper-V Switcher（Hyper-V 切换工具）** 是一个轻量级 Windows 批处理脚本，让你**一键开启或关闭 Hyper-V**——不用再死记硬背 `bcdedit` 和 `dism` 命令，也不用反复打开命令提示符。

它完整管理以下组件：
- **Hypervisor 启动类型**（`bcdedit /set hypervisorlaunchtype`）
- **虚拟机平台** 功能（`dism /online /enable-feature ...`）
- **Windows 虚拟机监控程序平台** 功能（`dism /online /enable-feature ...`）

### 解决了什么问题？

| 场景 | 没有这个工具 | 使用 Hyper-V Switcher |
|:---|:---|:---|
| **为 WSL2/Docker 开启 Hyper-V** | 以管理员打开 CMD → 手动执行 `bcdedit` → 执行 `dism` × 2 → 重启 | 双击 `.bat` → 输入 `1` → 重启完成 ✅ |
| **为 VMware/VirtualBox 关闭 Hyper-V** | 以管理员打开 CMD → 手动执行 `bcdedit` → 执行 `dism` × 2 → 重启 | 双击 `.bat` → 输入 `2` → 重启完成 ✅ |
| **频繁来回切换** | 每次都要重新输入所有命令 | 同一个菜单，每次都一样 |

Hyper-V 与 **VMware**、**VirtualBox** 等其他虚拟化平台以及部分**带反作弊的游戏**存在冲突。本工具让切换变得轻松自如。

### 安装

1. [下载](../../archive/refs/heads/main.zip) 或克隆仓库：
   ```bash
   git clone https://github.com/Je-taimais/HyperV-Switcher.git
   ```
2. **右键** `切换HyperV.bat` → **以管理员身份运行**

就这么简单。无需安装，无任何依赖。

### 使用方法

| 选项 | 操作 | 需要重启？ |
|:---:|:---|:---:|
| `1` | 开启 Hyper-V 全套功能 | 是 |
| `2` | 关闭 Hyper-V 全套功能 | 是 |
| `0` | 退出程序 | 否 |

> ⚠️ **需要管理员权限。** 如果未以管理员身份运行，脚本会自动检测并提醒你。

### 运行截图

<img src="screenshots/hyperv-switcher-demo.png" width="700" alt="Hyper-V 切换工具截图" />

---

## License

<a id="license"></a>

This project is licensed under the [MIT License](LICENSE).

---

<p align="center">
  Made with ❤️ by <a href="https://github.com/Je-taimais">Je-taimais</a>
</p>
