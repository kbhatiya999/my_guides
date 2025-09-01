---
# Python Poetry
tags: [python, poetry, package-management, dependency-management, pipx, poe]
category: programming/python/build-tools
complexity: intermediate
prerequisites: [python-basics, pip-basics, command-line-basics]
related: [python-venv, pip-guide, build-tools-overview, fastapi-setup]
last_updated: 2024-08-31
---

## Quick Reference
- **Technology**: Python Poetry, pipx, dependency management
- **Use Case**: Modern Python package and dependency management
- **Complexity**: Intermediate - requires Python and command line knowledge
- **Prerequisites**: Basic Python knowledge, understanding of pip, command line experience

# Python Poetry

## Installation

### Using pipx (Recommended)
Documentation: [pipx installation](https://pipx.pypa.io/stable/installation/)

Documentation: [Poetry with pipx](https://python-poetry.org/docs/main/#installing-with-pipx)

```bash
pip install --user pipx
pipx ensurepath
#sudo pipx ensurepath --global
pipx install poetry
```

## Plugin: Poe the Poet

Documentation: [Poe the Poet installation](https://poethepoet.natn.io/installation.html)

```bash
poetry self add 'poethepoet[poetry_plugin]'
```

## Poe Tasks

### Configuration (pyproject.toml)
```toml
[tool.poe.tasks]
dev = "uvicorn fastapi_gauth.main:app --reload"
pipv = "pip -V"
```

### Usage
```bash
poetry poe dev
```

## Related Resources

- **Python Virtual Environments**: See `venv.md` for virtual environment setup
- **Pip Guide**: See `pip-guide.md` for basic package management
- **Build Tools Overview**: See `../build_tools/` for other Python build tools
- **FastAPI Setup**: See `../../web_development/backend/fastapi/` for FastAPI projects
