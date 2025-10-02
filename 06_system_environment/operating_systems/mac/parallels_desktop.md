# Parallels Desktop 18 - Complete Guide

## ⚠️ Critical Warning
**DO NOT upgrade Ubuntu kernel beyond 5.18** - Parallels Desktop 18 does not support newer kernels and will break Parallels Tools installation.

## Quick Reference
- **Supported Platforms**: Intel-based and Apple Silicon Macs
- **Ubuntu Support**: 22.04 LTS (ARM64 for Apple Silicon, x64 for Intel)
- **Kernel Compatibility**: 5.15-5.18 (avoid HWE kernels 6.8+)
- **Key Feature**: Parallels Tools for seamless integration

## Installation Steps

### 1. Download Ubuntu 22.04 ISO
- **Apple Silicon Macs**: Get ARM64 version from Ubuntu website
- **Intel Macs**: Get standard x64 version

### 2. Create VM in Parallels Desktop
1. Open Parallels Desktop
2. Create New Virtual Machine
3. Select downloaded Ubuntu ISO as installation source
4. Follow standard Ubuntu installation process

### 3. Install Parallels Tools
```bash
# Mount Parallels Tools (Actions > Install Parallels Tools)
cd /media/USERNAME/Parallels\ Tools
sudo ./install
sudo reboot
```

## Ubuntu Kernel Compatibility

### The Problem
Ubuntu 22.04 LTS ships with kernel 5.15, but system updates can pull in newer Hardware Enablement (HWE) kernels like 6.8, which cause compatibility issues with Parallels Desktop 18.

### Commands to AVOID (Will Break Parallels)
```bash
# These commands can upgrade kernel beyond 5.18
sudo apt upgrade
sudo apt full-upgrade
sudo apt install linux-generic
sudo apt autoremove  # (when combined with updates)
sudo unattended-upgrades
```

### Solution: Lock Kernel Version

#### 1. Hold Kernel Packages
```bash
sudo apt-mark hold linux-image-generic linux-headers-generic linux-modules linux-generic
```

#### 2. Verify Holds
```bash
apt-mark showhold
```

#### 3. Safe Update Commands
```bash
# Update package lists only
sudo apt update

# Upgrade everything except kernel packages
sudo apt upgrade --exclude=linux*
```

### Additional Safeguards

#### Disable Automatic Updates
Edit `/etc/apt/apt.conf.d/20auto-upgrades`:
```
APT::Periodic::Unattended-Upgrade "0";
```

#### Check Current Kernel
```bash
uname -r
```

### Recovery (If Kernel Already Upgraded)

#### Method 1: Install Matching Headers
```bash
# Install matching kernel headers
sudo apt install linux-headers-$(uname -r)

# Reinstall Parallels Tools
cd /media/USERNAME/Parallels\ Tools
sudo ./install
sudo reboot
```

#### Method 2: Downgrade Kernel
```bash
# Downgrade to compatible kernel
sudo apt install linux-generic-5.15
sudo update-grub

# Boot into recovery mode from GRUB menu if needed
# Then reinstall Parallels Tools from Actions menu
```

## Alternative Solutions
- **Upgrade Parallels Desktop**: Version 20.3+ has better kernel support for newer kernels
- **Use Supported Kernels**: Stick with Ubuntu 22.04 GA kernel (5.15)

## Why This Matters
- **Parallels Tools**: Required for seamless Mac-Ubuntu integration
- **Performance**: Unsupported kernels cause degraded performance
- **Compatibility**: Kernel 5.18+ breaks module compilation
- **Features**: Clipboard sharing, file sharing, display resolution

## Troubleshooting
- **Tools Installation Fails**: Check kernel compatibility and headers
- **Performance Issues**: Verify kernel version support
- **Integration Problems**: Reinstall Parallels Tools
- **Display Issues**: Update Parallels Tools after kernel changes

## Key Points
- Ubuntu 22.04 GA kernel (5.15) is fully compatible with Parallels 18
- HWE kernels (5.18+) may cause compatibility issues
- Always check `uname -r` before major updates
- Hold kernel packages to prevent accidental upgrades
- Parallels Desktop 20.3+ has better support for newer kernels

## Resources
- [Parallels Forums](https://forum.parallels.com/)
- [GitHub Kernel Fix Guide](https://gist.github.com/rudolfratusinski/a4d9e3caff11a4d9d81d2e84abc9afbf)
- [Parallels Knowledge Base](https://kb.parallels.com/129963)