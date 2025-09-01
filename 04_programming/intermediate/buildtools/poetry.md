---
# Python Poetry Package Manager Guide - Dependency Management, Virtual Environments, Project Management
# Python Poetry, Package Management, Dependency Resolution, Virtual Environments, PyProject.toml, Poetry.lock
# Category: Programming > Python > Build Tools > Package Management
# Complexity: Intermediate - requires Python and package management knowledge
# Prerequisites: Python basics, pip basics, virtual environments understanding
# Keywords: poetry, python, package-management, dependency-management, build-tools, virtual-environments, pyproject
# Last Updated: 2024-08-31
---

## Quick Reference
- **Technology**: Poetry - Python dependency management and packaging tool
- **Use Case**: Modern Python project dependency management and packaging
- **Complexity**: Intermediate - requires Python and package management knowledge
- **Prerequisites**: Understanding of Python, pip, and virtual environments

# Python Poetry Package Manager Guide

## Modern Python Dependency Management and Packaging

## Installation
```bash
brew install poetry
```

## Plugins
* **Poe the Poet:** [https://poethepoet.natn.io/poetry_plugin.html](https://poethepoet.natn.io/poetry_plugin.html)
  ```bash
  poetry self add 'poethepoet[poetry_plugin]'
  ```

## Key Features
- **Dependency Resolution**: Automatic dependency resolution and conflict handling
- **Virtual Environments**: Built-in virtual environment management
- **Project Management**: Project creation, configuration, and packaging
- **Lock Files**: Reproducible builds with poetry.lock
- **PyProject.toml**: Modern Python project configuration

## Common Commands
```bash
# Create new project
poetry new my-project

# Add dependency
poetry add requests

# Install dependencies
poetry install

# Run commands
poetry run python script.py

# Build package
poetry build

# Publish package
poetry publish
```

## Related Resources
- **Python Virtual Environments**: See `../python/venv/` for virtual environment setup
- **Pip Tools**: See `pip-tools.md` for alternative dependency management
- **PyProject.toml**: See `pyproject-toml.md` for configuration details
- **Dependency Management**: See `../dependency-management/` for best practices

## Search Keywords
poetry, python, package-management, dependency-management, build-tools, virtual-environments, pyproject.toml, poetry.lock, dependency-resolution
