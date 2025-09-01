---
# Java Version Management
tags: [java, sdkman, version-management, jdk, development-environment]
category: programming/java/environment
complexity: intermediate
prerequisites: [java-basics, command-line-basics, homebrew-basics]
related: [java-setup, environment-management, package-managers, development-tools]
last_updated: 2024-08-31
---

## Quick Reference
- **Technology**: Java, SDKMAN, version management, development environment
- **Use Case**: Managing multiple Java versions and JDKs on macOS/Linux/Windows
- **Complexity**: Intermediate - requires Java and command line knowledge
- **Prerequisites**: Understanding of Java basics, command line usage, and Homebrew

# Java Version Management

## Install sdkman

**Tutorial followed**: [Manage Multiple JDKs on macOS, Linux, and Windows WSL2](https://medium.com/@brunoborges/manage-multiple-jdks-on-mac-os-linux-and-windows-wsl2-3a73467b685c)

**sdkman installation**: [SDKMAN Homebrew Tap](https://github.com/sdkman/homebrew-tap)

```bash
brew tap sdkman/tap
brew install sdkman-cli
```

## Usage

### List Available Java Versions
```bash
sdk list java
```

### Install Specific Java Version
```bash
sdk install <identifier>
```

### Examples
```bash
# Install Java 17
sdk install java 17.0.2-open

# Install Java 11
sdk install java 11.0.12-open

# Install Java 8
sdk install java 8.0.302-open
```

## Benefits of SDKMAN

- **Multiple JDK Management**: Easily switch between different Java versions
- **Cross-Platform**: Works on macOS, Linux, and Windows WSL2
- **Easy Installation**: Simple commands to install and manage JDKs
- **Version Switching**: Quick switching between installed Java versions
- **Auto-completion**: Shell integration with tab completion

## Related Resources

- **Java Setup**: See `setup.md` for complete Java environment configuration
- **Environment Management**: See `../../06_system_environment/` for system setup
- **Package Managers**: See `../../04_programming/build_tools/` for other tools
- **Development Tools**: See `../../06_system_environment/development_tools/` for IDE setup
