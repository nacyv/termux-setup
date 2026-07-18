#!/data/data/com.termux/files/bin/bash

echo "Change Termux Repositories"
termux-change-repo

echo "Updating & Upgrading Packages"
apt update && apt upgrade
apt install x11-repo tur-repo

echo "Installing Packages"
apt install zsh wget neofetch git gh nodejs rust termux-x11 termux-api lxqt pulseaudio

echo "Removing MOTD file"
rm "$PREFIX/usr/etc/motd"
touch "$PREFIX/usr/etc/motd"

echo "Moving .zshrc file"
mv .zshrc "$HOME/"

echo "Downloading PowerLevel10K Theme for zsh"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$HOME/powerlevel10k"

echo "Change shell to zsh"
chsh -s zsh

echo "Moving desktop.sh file"
mv desktop.sh "$HOME/"

echo "Modify desktop.sh file to be Executable"
chmod +x desktop.sh

echo "Exit then Open the Termux again"
exit
