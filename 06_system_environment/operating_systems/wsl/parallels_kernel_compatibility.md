# Ubuntu Kernel Compatibility with Parallels Desktop 18

## Quick Reference
- **Issue**: Ubuntu 22.04 kernel updates can break Parallels Desktop 18 compatibility
- **Solution**: Lock kernel at 5.15 to avoid HWE kernel upgrades (6.8+)
- **Target**: Ubuntu 22.04 LTS with Parallels Desktop 18

## Problem
Ubuntu 22.04 LTS ships with kernel 5.15, but system updates can pull in newer Hardware Enablement (HWE) kernels like 6.8, which may cause compatibility issues with Parallels Desktop 18 (kernel limit: ~5.15–6.2).

## Commands to Avoid
These commands can trigger kernel upgrades:
- `sudo apt upgrade` / `sudo apt-get upgrade`
- `sudo apt full-upgrade` / `sudo apt-get dist-upgrade`
- `sudo apt install linux-generic`
- `sudo apt autoremove` (when combined with updates)
- `sudo unattended-upgrades`

## Solution: Lock Kernel Version

### 1. Hold Kernel Packages
```bash
sudo apt-mark hold linux-image-generic linux-headers-generic linux-modules linux-generic
```

### 2. Verify Holds
```bash
apt-mark showhold
```

### 3. Safe Update Commands
```bash
# Update package lists only
sudo apt update

# Upgrade everything except kernel packages
sudo apt upgrade --exclude=linux*
```

## Additional Safeguards

### Disable Automatic Updates
Edit `/etc/apt/apt.conf.d/20auto-upgrades`:
```
APT::Periodic::Unattended-Upgrade "0";
```

### Check Current Kernel
```bash
uname -r
```

### Downgrade if Needed
If kernel is already too new:
```bash
sudo apt install linux-generic-5.15
sudo update-grub
```

## Recovery Steps
If Parallels Tools break due to kernel change:
1. Boot into recovery mode from GRUB menu
2. Downgrade kernel: `sudo apt install linux-generic-5.15`
3. Reinstall Parallels Tools from Actions menu

## Key Points
- Ubuntu 22.04 GA kernel (5.15) is compatible with Parallels 18
- HWE kernels (6.8+) may cause compatibility issues
- Always check `uname -r` before major updates
- Hold kernel packages to prevent accidental upgrades
