#!/bin/bash
echo "[!] Building new packages"

echo "[-] building android-sdk"
cd android-sdk
./build.sh
cd ..

echo "[-] building compilers"
cd compilers
./build.sh
cd ..

echo "[-] building libs"
cd libs
./build.sh
cd ..

echo "[-] building pentest tools"
cd pentest
./build.sh
cd ..

echo "[-] building server tools"
cd servers
./build.sh
cd ..

echo "[-] building usual tools"
cd tools
./build.sh
cd ..

echo "[!] All packages are done"

