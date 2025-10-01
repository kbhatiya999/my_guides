# Parallels Desktop 18 - Ubuntu Kernel Compatibility

## ⚠️ Critical Warning
**DO NOT upgrade Ubuntu kernel beyond 5.18** - Parallels Desktop 18 does not support newer kernels and will break Parallels Tools installation.

## Quick Reference
- **Supported Kernel**: Ubuntu 22.04 LTS with kernel 5.15-5.18
- **Problem**: Kernel upgrades to 5.18+ break Parallels Tools
- **Solution**: Lock kernel version to prevent upgrades

## Commands to AVOID (Will Break Parallels)
```bash
# These commands can upgrade kernel beyond 5.18
sudo apt upgrade
sudo apt full-upgrade
sudo apt install linux-generic
sudo unattended-upgrades
```

## Solution: Lock Kernel Version
```bash
# Lock kernel to prevent upgrades
sudo apt-mark hold linux-image-generic linux-headers-generic linux-modules linux-generic

# Verify locks are active
apt-mark showhold

# Safe updates (excludes kernel packages)
sudo apt update
sudo apt upgrade --exclude=linux*
```

## Recovery (If Kernel Already Upgraded)
```bash
# Install matching kernel headers
sudo apt install linux-headers-$(uname -r)

# Reinstall Parallels Tools
cd /media/USERNAME/Parallels\ Tools
sudo ./install
sudo reboot
```

## Alternative Solutions
- **Upgrade Parallels Desktop**: Version 20.3+ has better kernel support
- **Downgrade Kernel**: `sudo apt install linux-generic-5.15`

## Why This Matters
- **Parallels Tools**: Required for seamless Mac-Ubuntu integration
- **Performance**: Unsupported kernels cause degraded performance
- **Compatibility**: Kernel 5.18+ breaks module compilation

## Check Current Kernel
```bash
uname -r
```

## Resources
- [Parallels Forums](https://forum.parallels.com/)
- [GitHub Kernel Fix Guide](https://gist.github.com/rudolfratusinski/a4d9e3caff11a4d9d81d2e84abc9afbf)
