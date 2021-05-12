#!/bin/bash
echo "Cleaning old debs (In case of bad exit)"
rm -rf *.deb

echo "Building new packages"
dpkg-deb --build apktool
dpkg-deb --build metasploit-framework
dpkg-deb --build neofetch

dpkg-deb --build cus-glib
dpkg-deb --build ngrok
dpkg-deb --build msfpc
dpkg-deb --build nethunter-support
dpkg-deb --build android-pin-bruteforce
dpkg-deb --build john
dpkg-deb --build psf

echo "Untarring jdk-11 as github dosent like 100mb+ files"
tar -xf openjdk-jdk11.tar.gz
dpkg-deb --build openjdk-jdk11
rm -rf openjdk-jdk11

mv -f *.deb ../debs
echo "Done"

