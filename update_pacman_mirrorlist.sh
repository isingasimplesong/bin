#!/bin/sh
rm -f /etc/pacman.d/mirrorlist.bak &
mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak &&
	curl -s "https://archlinux.org/mirrorlist/?country=CA&country=US&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - >/etc/pacman.d/mirrorlist &&
	echo "mirrolist updated to : "
cat /etc/pacman.d/mirrorlist
