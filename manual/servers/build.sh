#!/bin/bash

echo "[*] Packaging bukkit"
dpkg-deb --build bukkit
echo "[*] Packaging ngrok"
dpkg-deb --build ngrok
echo "[*] Packaging spigot"
dpkg-deb --build spigot

mkdir -p ../debs
mv -f *.deb ../debs
echo "All packages are moved to ../debs"

exit
