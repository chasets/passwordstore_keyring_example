#!/bin/bash
set -e

sudo usermod --shell /bin/zsh vscode
sed -i 's/ZSH_THEME="devcontainers"/ZSH_THEME="dst"/' ~/.zshrc

# set the timezone
sudo cp /usr/share/zoneinfo/America/New_York /etc/localtime  
sudo bash -c  "echo America/New_York > /etc/timezone"  

# When lgging in via docker exec need to change to home dir
echo -ne "\ncd\n" >> /home/vscode/.zshrc


#cat << EOF >> ~/.zshrc
# placeholder
#EOF

#pip install --upgrade pip
#pip install -r requirements.txt