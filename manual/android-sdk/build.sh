#!/bin/bash

echo "[*] Packaging android-sdk-build-tools"
dpkg-deb --build android-sdk-build-tools
sleep 1
echo "[*] Packaging android-sdk-tools"
dpkg-deb --build android-sdk-tools
sleep 1
mkdir -p ../debs
mv -f *.deb ../debs

cd ..
exit
