#!/bin/bash
echo "#################################"
echo "Start looplinux-before.sh"
echo "#################################"

echo "Populate Core Team keys"
echo "#################################"
pacman-key --init
pacman-key --populate archlinux


echo "Copy grub Vimix theme (archiso deletes /boot when making the ISO)"
echo "#################################"
mkdir -p /boot/grub/themes
cp -Rf /usr/share/grub/themes/Vimix /boot/grub/themes/

echo "Changing into our own linux.preset"
echo "#################################"
mv /etc/mkinitcpio.d/looplinux /etc/mkinitcpio.d/linux.preset

echo "#################################"
echo "End looplinux-before.sh"
echo "#################################"
rm /usr/local/bin/looplinux-before.sh
