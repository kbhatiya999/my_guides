---
# Python Virtual Environments
tags: [python, venv, virtual-environment, environment-management, isolation]
category: programming/python/environment
complexity: beginner
prerequisites: [python-basics, command-line-basics]
related: [python-poetry, pip-guide, environment-setup, dependency-management]
last_updated: 2024-08-31
---

## Quick Reference
- **Technology**: Python virtual environments, environment isolation
- **Use Case**: Creating isolated Python environments for projects
- **Complexity**: Beginner - basic Python knowledge required
- **Prerequisites**: Understanding of Python basics and command line usage

# Python Virtual Environments

## Creating Virtual Environment Without Symlinks

Use the `--copies` flag to create a virtual environment with actual file copies instead of symlinks:

```bash
python -m venv --copies --upgrade-deps env
```

### Options Explained
- `--copies`: Create actual file copies instead of symlinks
- `--upgrade-deps`: Upgrade pip and setuptools to latest versions
- `env`: Name of the virtual environment directory

## Related Resources

- **Python Poetry**: See `poetry.md` for modern dependency management
- **Pip Guide**: See `pip-guide.md` for package installation
- **Environment Setup**: See `../environment-setup.md` for complete environment configuration
- **Dependency Management**: See `../dependency-management.md` for best practices
