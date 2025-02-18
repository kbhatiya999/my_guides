# Generate Password hash
- on terminal call `python`
```
from jupyter_server.auth import passwd
passwd('<password>', algorithm='sha1')
```

# Setup Jupyter lab 


[https://gist.github.com/artificialsoph/443a8bf9af3302df9cb0cb54a616f838](https://gist.github.com/artificialsoph/443a8bf9af3302df9cb0cb54a616f838)


```bash
jupyter lab --generate-config
echo "c.ServerApp.allow_remote_access = True" >> ~/.jupyter/jupyter_lab_config.py
echo "c.ServerApp.open_browser = False" >> ~/.jupyter/jupyter_lab_config.py
echo "c.NotebookApp.password = 'sha1:b271d0a82fde:26b986d53e32bcf05d0b19f6c97f29dcf0604047'" >> ~/.jupyter/jupyter_lab_config.py
; jupyter lab password

```
