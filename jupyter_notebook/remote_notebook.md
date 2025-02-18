# Generate Password hash
- on terminal call `python`
```
from jupyter_server.auth import passwd
passwd('<password>', algorithm='sha1')
```

# Jupyter lab setup


[https://gist.github.com/artificialsoph/443a8bf9af3302df9cb0cb54a616f838](https://gist.github.com/artificialsoph/443a8bf9af3302df9cb0cb54a616f838)


```bash
pip install jupyterlab
jupyter lab --generate-config
echo "c.ServerApp.allow_remote_access = True" >> ~/.jupyter/jupyter_lab_config.py
echo "c.ServerApp.open_browser = False" >> ~/.jupyter/jupyter_lab_config.py
echo "c.NotebookApp.password = 'sha1:b271d0a82fde:26b986d53e32bcf05d0b19f6c97f29dcf0604047'" >> ~/.jupyter/jupyter_lab_config.py
: jupyter lab password
jupyter lab

```

# Ngrok setup
- Linux [https://dashboard.ngrok.com/get-started/setup/linux](https://dashboard.ngrok.com/get-started/setup/linux)
  ```
  curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
	| sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
	&& echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
	| sudo tee /etc/apt/sources.list.d/ngrok.list \
	&& sudo apt update \
	&& sudo apt install ngrok

  ngrok config add-authtoken 2tAv9EYcKPtzHDtDsybzSiUDqzz_4Z9nxJw9SrGsyMpayY4TT
  ngrok http --url=selected-bear-comic.ngrok-free.app 8888
  ```
- macos [https://dashboard.ngrok.com/get-started/setup/macos](https://dashboard.ngrok.com/get-started/setup/macos)
  ```
  brew install ngrok
  ngrok config add-authtoken 2tAv9EYcKPtzHDtDsybzSiUDqzz_4Z9nxJw9SrGsyMpayY4TT
  ngrok http --url=selected-bear-comic.ngrok-free.app 8888
  ```
  
