# WSL / UBUNTU

## Install Chrome
```
# Update system packages
sudo apt update && sudo apt -y upgrade

# Change to the temporary directory
cd /tmp

# Download the Google Chrome package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Install the Google Chrome package
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Fix any missing dependencies
sudo apt install --fix-broken -y

# Reinstall the Google Chrome package if necessary
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Verify the installation
google-chrome --version

# Launch Google Chrome
google-chrome
```
## install pycharm-community
`sudo snap install pycharm-community --classic`

## Install Mongo server

[https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/)

