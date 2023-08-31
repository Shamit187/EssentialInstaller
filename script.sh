# initials
sudo apt update
sudo apt upgrade
sudo apt install wget

# google chrom
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm -f google-chrome-stable_current_amd64.deb

# vscode
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# cpp
sudo apt-get update
sudo apt-get install build-essential gdb -y

# git
sudo apt install git-all -y

# node
sudo apt install nodejs -y
sudo apt install npm -y
sudo npm install --global yarn -y

# rust
sudo apt install curl -y
curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh 
source $HOME/.cargo/env

# vim
sudo apt install vim
