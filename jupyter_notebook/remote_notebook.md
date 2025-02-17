# Setup Jupyter lab 
[https://gist.github.com/artificialsoph/443a8bf9af3302df9cb0cb54a616f838](https://gist.github.com/artificialsoph/443a8bf9af3302df9cb0cb54a616f838)

```
jupyter lab --generate-config
echo "c.ServerApp.allow_remote_access = True" >> ~/.jupyter/jupyter_lab_config.py
echo "c.ServerApp.open_browser = False" >> ~/.jupyter/jupyter_lab_config.py
jupyter notebook password
```
