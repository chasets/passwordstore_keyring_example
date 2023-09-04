#!/bin/sh
set -e

echo "Installing pass"

apt-get update
apt-get install -y pass

echo "Setting up openpgp in pass"
# TSC - need to turn the path into an option
echo "\nexport PASSWORD_STORE_GPG_OPTS=\"--armor --openpgp\"\n" >> /home/vscode/.zshrc
