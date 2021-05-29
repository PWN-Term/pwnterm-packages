#!/bin/bash

echo "[*] Packaging libnftables"
dpkg-deb --build libnftables
sleep 1
mkdir -p ../debs
mv -f *.deb ../debs

exit
