# Python Poetry

## Install
Docs pipx : [https://pipx.pypa.io/stable/installation/](https://pipx.pypa.io/stable/installation/)

Docs poetry : [https://python-poetry.org/docs/main/#installing-with-pipx](https://python-poetry.org/docs/main/#installing-with-pipx)
```
pip install --user pipx
pipx ensurepath
#sudo pipx ensurepath --global
pipx install poetry
```

## Plugin Poe the poet
Docs: [https://poethepoet.natn.io/installation.html](https://poethepoet.natn.io/installation.html)
```
poetry self add 'poethepoet[poetry_plugin]'
```

# Poe tasks
pyproject.toml
```
[tool.poe.tasks]
dev = "uvicorn fastapi_gauth.main:app --reload"
pipv = "pip -V"
```
run
```
poetry poe dev
```
