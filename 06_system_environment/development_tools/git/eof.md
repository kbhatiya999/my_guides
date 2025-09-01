---
# Git End of Line (EOF) Management
tags: [git, eof, line-endings, cross-platform, file-formatting]
category: system-environment/development-tools/git
complexity: intermediate
prerequisites: [git-basics, command-line-basics, cross-platform-development]
related: [git-configuration, cross-platform-setup, file-formatting, development-environment]
last_updated: 2024-08-31
---

## Quick Reference
- **Technology**: Git, EOF management, line endings, cross-platform development
- **Use Case**: Managing line endings across different operating systems in Git repositories
- **Complexity**: Intermediate - requires Git and cross-platform development knowledge
- **Prerequisites**: Understanding of Git basics, command line usage, and cross-platform development

# End Of Files

## Change File Endings

### Global Git Configuration

**Change file endings of files in a git repo:**

```bash
git config --global core.eol lf
git add --renormalize .
```

### What This Does

- **`core.eol lf`**: Sets Git to use LF (Line Feed) line endings globally
- **`--renormalize`**: Re-processes all files in the repository with the new line ending settings
- **Cross-platform compatibility**: Ensures consistent line endings across Windows, macOS, and Linux

## Line Ending Types

- **LF (Line Feed)**: Unix/Linux/macOS style (`\n`)
- **CRLF (Carriage Return + Line Feed)**: Windows style (`\r\n`)
- **CR (Carriage Return)**: Classic Mac style (`\r`)

## Best Practices

- **Use LF globally**: Most modern tools and platforms prefer LF
- **Configure per repository**: Can override global settings per project
- **Use .gitattributes**: For fine-grained control over specific file types
- **Test cross-platform**: Verify line endings work on all target platforms

## Related Resources

- **Git Configuration**: See `configuration.md` for other Git settings
- **Cross-Platform Setup**: See `../../operating_systems/` for OS-specific configuration
- **Development Environment**: See `../` for other development tools
- **File Formatting**: See `../../04_programming/` for code formatting tools
