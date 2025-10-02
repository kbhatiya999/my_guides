# Parallels Desktop 18 - Complete Guide

## ⚠️ Critical Warning
**DO NOT upgrade Ubuntu kernel beyond 5.18** - Parallels Desktop 18 does not support newer kernels and will break Parallels Tools installation.

## Quick Reference
- **Supported Platforms**: Intel-based and Apple Silicon Macs
- **Ubuntu Support**: 22.04 LTS (ARM64 server + desktop install for Apple Silicon, x64 desktop for Intel)
- **ARM64 Desktop ISO**: Not available for 22.04 LTS (use server + desktop install method)
- **Kernel Compatibility**: 5.15-5.18 (avoid HWE kernels 6.8+)
- **Key Feature**: Parallels Tools for seamless integration

## Installation Steps

### 1. Download Ubuntu ISO

#### For Apple Silicon Macs (ARM64)
**Important**: Ubuntu 22.04 LTS does **NOT** have an official ARM64 desktop ISO. You have two options:

**Option A: Server ISO + Desktop Installation (Recommended)**
1. Download: `ubuntu-22.04.5-live-server-arm64.iso` from [Ubuntu releases](https://cdimage.ubuntu.com/releases/22.04/release/)
2. Install the server version (text-based installer)
3. After installation, add desktop environment:
```bash
sudo apt update
sudo apt upgrade
sudo apt install ubuntu-desktop
sudo reboot
```

**Option B: Use Ubuntu 24.10+ (Has ARM64 Desktop ISO)**
- Ubuntu introduced generic ARM64 desktop ISOs starting with version 24.10
- Download from [Ubuntu Desktop](https://ubuntu.com/download/desktop)
- **Note**: Check kernel compatibility with Parallels Desktop 18

#### For Intel Macs (x64)
- Download standard Ubuntu 22.04 LTS desktop ISO from [Ubuntu Desktop](https://ubuntu.com/download/desktop)

### 2. Create VM in Parallels Desktop
1. Open Parallels Desktop
2. Create New Virtual Machine
3. Select downloaded Ubuntu ISO as installation source
4. **For ARM64 server ISO**: Follow text-based installation, then install desktop as shown above
5. **For desktop ISO**: Follow standard Ubuntu installation process

### 3. Install Parallels Tools
```bash
# Mount Parallels Tools (Actions > Install Parallels Tools)
cd /media/USERNAME/Parallels\ Tools
sudo ./install
sudo reboot
```

### 4. Post-Installation VM Stealth (Optional)
To make the VM less detectable as virtual machine:

#### Disable VM Integration Features
- Avoid shared folders, clipboard, drag-and-drop
- Don't install Parallels Tools if stealth is priority

#### Check VM Detection
```bash
# Check if VM is detected
systemd-detect-virt
sudo dmidecode -s system-manufacturer
lscpu | grep Hypervisor
```

#### Modify VM Settings
- Change manufacturer/product strings in Parallels configuration
- Use realistic hardware device identifiers
- Disable hypervisor exposure features

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

## Ubuntu Version Considerations

### ARM64 Desktop ISO Availability
- **Ubuntu 22.04 LTS**: No official ARM64 desktop ISO (use server + desktop install)
- **Ubuntu 24.04 LTS**: No official ARM64 desktop ISO (use server + desktop install)
- **Ubuntu 24.10+**: Generic ARM64 desktop ISOs available
- **Ubuntu 25.04**: Continues ARM64 desktop support

### Recommendations
- **For LTS stability**: Use Ubuntu 22.04 LTS with server + desktop install method
- **For convenience**: Use Ubuntu 24.10+ with direct ARM64 desktop ISO
- **For compatibility**: Always check kernel version limits with Parallels Desktop 18

## Important Notes
- **Raspberry Pi Desktop**: Do NOT use Raspberry Pi Desktop images - they're either hardware-specific (ARM Pi OS) or x86-64 (requires emulation)
- **Performance**: Native ARM64 Ubuntu provides best performance on Apple Silicon Macs
- **VM Stealth**: Advanced applications may still detect virtualization despite stealth measures

## Resources
- [Ubuntu ARM64 Releases](https://cdimage.ubuntu.com/releases/22.04/release/)
- [Ubuntu Desktop Downloads](https://ubuntu.com/download/desktop)
- [Parallels Forums](https://forum.parallels.com/)
- [GitHub Kernel Fix Guide](https://gist.github.com/rudolfratusinski/a4d9e3caff11a4d9d81d2e84abc9afbf)
- [Parallels Knowledge Base](https://kb.parallels.com/129963)