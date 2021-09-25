#!/bin/bash

echo "[-] Adding repositry for VS Code ..."
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - > /dev/null
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /dev/null


curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null


echo "[+] Adding repositry for VS Code"
echo "[-] Running apt update ..."
sudo apt update
echo "[+] Done with apt update"
echo "[-] Installing VS Code ..."
sudo apt install code
echo "[+] VS Code Installation Done"
echo "[-] Installing Git ..."
sudo apt install git -y
sudo apt install gh
echo "[+] Git Installation Done"

gh auth login -w

