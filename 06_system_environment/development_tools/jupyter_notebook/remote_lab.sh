#!/bin/bash

# Check if running on macOS or Linux
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS setup
    echo "Setting up on macOS..."
    brew install ngrok
else
    # Linux setup
    echo "Setting up on Linux..."
    curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
    && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list \
    && sudo apt update \
    && sudo apt install ngrok
fi

# Kill existing Jupyter processes
echo "Killing existing Jupyter processes..."
# pkill -f jupyter

# Wait for processes to terminate
sleep 2


# Install JupyterLab and setup configuration
pip install jupyterlab
yes| jupyter lab --generate-config
echo "c.ServerApp.allow_remote_access = True" >> ~/.jupyter/jupyter_lab_config.py
echo "c.ServerApp.open_browser = False" >> ~/.jupyter/jupyter_lab_config.py
echo "c.NotebookApp.password = 'sha1:b271d0a82fde:26b986d53e32bcf05d0b19f6c97f29dcf0604047'" >> ~/.jupyter/jupyter_lab_config.py

# Configure ngrok
ngrok config add-authtoken 2tAv9EYcKPtzHDtDsybzSiUDqzz_4Z9nxJw9SrGsyMpayY4TT

# Start ngrok
ngrok http --url=selected-bear-comic.ngrok-free.app 8888 &

# Start Jupyter Lab in background
jupyter lab


