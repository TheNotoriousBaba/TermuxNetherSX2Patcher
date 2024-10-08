#!/data/data/com.termux/files/usr/bin/bash
#/data/data/com.termux/files/usr/bin/env bash
# Installing aapt, wget and cloning repo.
pkg upgrade -y
pkg install aapt wget -y # it will uninstall some package due to crappy packages maintainer practice.
#wget "https://github.com/Trixarian/NetherSX2-patch/releases/download/1.6/NetherSX2-patch.zip" -OLD V1.6
wget "https://github.com/Trixarian/NetherSX2-patch/releases/download/1.9-dev/NetherSX2-patch.zip"
unzip NetherSX2-patch.zip
rm NetherSX2-patch.zip
cd NetherSX2-patch || exit
cp /storage/emulated/0/NetherSX2/15210-v1.5-4248-noads.apk 15210-v1.5-4248-noads.apk
chmod +x patch-apk.sh
./patch-apk.sh
cp 15210-v1.5-4248-noads.apk /storage/emulated/0/NetherSX2/15210-v1.5-4248-noads-patched.apk
echo "Done! Output APK should be in /storage/emulated/0/NetherSX2/. Check it in File manager."
