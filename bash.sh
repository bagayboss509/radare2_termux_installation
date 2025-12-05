#!/data/data/com.termux/files/usr/bin/bash

# Mise à jour
pkg update && pkg upgrade -y

# Installation dépendances
pkg install git make clang python -y

# Clonage et installation de radare2
git clone https://github.com/radareorg/radare2.git
cd radare2
chmod +x sys/install.sh
./sys/install.sh

# Vérification
r2 -v

# Ouvrir la chaîne Telegram à la fin
termux-open "https://t.me/apk2mods"
