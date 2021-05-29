#!/bin/bash

echo "[*] Packaging aapt2"
dpkg-deb --build aapt2
echo "[*] Packaging iptables"
dpkg-deb --build iptables
echo "[*] Packaging neofetch"
dpkg-deb --build neofetch

mkdir -p ../debs
mv -f *.deb ../debs
echo "All packages are moved to ../debs"

exit
