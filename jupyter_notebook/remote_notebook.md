# Generate Password hash
- on terminal call `python`
```
from jupyter_server.auth import passwd
passwd('<password>')
```

# Setup Jupyter lab 


[https://gist.github.com/artificialsoph/443a8bf9af3302df9cb0cb54a616f838](https://gist.github.com/artificialsoph/443a8bf9af3302df9cb0cb54a616f838)


```bash
jupyter lab --generate-config
echo "c.ServerApp.allow_remote_access = True" >> ~/.jupyter/jupyter_lab_config.py
echo "c.ServerApp.open_browser = False" >> ~/.jupyter/jupyter_lab_config.py
echo "c.NotebookApp.password = 'argon2:$argon2id$v=19$m=10240,t=10,p=8$HYqAwy/nb/SYVe+98VJm2Q$ELDzfrKwUrhl0VbJsGmBpDEepxz43J0HPsGOArqUcmg'" >> ~/.jupyter/jupyter_lab_config.py
; jupyter lab password

```
