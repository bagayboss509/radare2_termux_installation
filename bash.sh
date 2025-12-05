#!/data/data/com.termux/files/usr/bin/bash

# Mise à jour de Termux
pkg update && pkg upgrade -y

# Installation des dépendances
pkg install git make clang python -y

# Clonage du dépôt radare2
git clone https://github.com/radareorg/radare2.git
cd radare2

# Rendre le script install.sh exécutable (si nécessaire)
chmod +x sys/install.sh

# Exécuter le script d'installation
./sys/install.sh

# Vérification de l'installation
r2 -v
