#!/bin/bash

echo "[-] Adding repositry for VS Code ..."
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - > /dev/null
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /dev/null
echo "[+] Adding repositry for VS Code"
echo "[-] Running apt update ..."
sudo apt update
echo "[+] Done with apt update"
echo "[-] Installing VS Code ..."
sudo apt install code
echo "[+] VS Code Installation Done"
echo "[-] Installing Git ..."
sudo apt install git -y
echo "[+] Git Installation Done"


