#!/bin/bash
echo "Cleaning old debs (In case of bad exit)"
rm -rf *.deb

echo "Building new packages"
dpkg-deb --build apktool
dpkg-deb --build metasploit-framework
dpkg-deb --build neofetch
dpkg-deb --build ngrok
dpkg-deb --build msfpc
dpkg-deb --build android-pin-bruteforce
dpkg-deb --build john
dpkg-deb --build psf
dpkg-deb --build gradle
dpkg-deb --build android-sdk-build-tools
dpkg-deb --build ant

echo "Untarring jdk-11 as github dosent like 100mb+ files"
tar -xf openjdk-jdk11.tar.gz
dpkg-deb --build openjdk-jdk11
rm -rf openjdk-jdk11

mkdir -p ../debs
mv -f *.deb ../debs
echo "All packages are moved to ../debs"

