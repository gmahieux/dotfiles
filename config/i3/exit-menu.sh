#!/bin/bash
#while [ "$select" != "Cancel" -a "$select" != "Logout" -a "$select" != "Power-off" -a "$select" != "Reboot" ];
#do
	select=$(echo -e 'Cancel\nLock\nSuspend\nHibernate\nPower-off\nLogout\nReboot' | rofi -dmenu -p "Exit " -no-custom -lines 7 -width 300)
#	[ -z "$select" ] && exit 0
#done
[ "$select" = "Cancel" ] && exit 0
[ "$select" = "Logout" ] && i3-msg exit
[ "$select" = "Lock" ] && sh /usr/local/bin/xflock4
[ "$select" = "Power-off" ] && systemctl poweroff
[ "$select" = "Reboot" ] && systemctl reboot
[ "$select" = "Suspend" ] && sh /usr/local/bin/xflock4 && systemctl suspend
[ "$select" = "Hibernate" ] && sh /usr/local/bin/xflock4 && systemctl hibernate

