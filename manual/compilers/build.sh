#!/bin/bash

echo "[*] Packaging ant"
dpkg-deb --build ant
echo "[*] Packaging apktool"
dpkg-deb --build apktool
echo "[*] Packaging gradle"
dpkg-deb --build gradle

mkdir -p ../debs
mv -f *.deb ../debs

exit
