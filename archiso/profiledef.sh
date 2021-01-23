#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="looplinux"
iso_label="looplinux-v21.03.1"
iso_publisher="Loop Linux "
iso_application="Loop Linux Live/Rescue CD"
iso_version="v21.03.1"
install_dir="arch"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
#airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
airootfs_image_tool_options=('-comp' 'xz')
file_permissions=(
  ["/etc/shadow"]="0:0:600"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/etc/sudoers.d"]="0:0:750"
  ["/usr/local/bin/looplinux-all-cores.sh"]="0:0:755"
  ["/usr/local/bin/looplinux-before.sh"]="0:0:755"
  ["/usr/local/bin/looplinux-final.sh"]="0:0:755"
)
