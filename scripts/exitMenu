#!/bin/bash
#while [ "$select" != "Cancel" -a "$select" != "Logout" -a "$select" != "Power-off" -a "$select" != "Reboot" ];
#do
	select=$(echo -e 'Cancel\nLock\nSuspend\nHibernate\nPower-off\nLogout\nReboot' | rofi -dmenu -p "Exit " -no-custom -lines 7 -width 300)
#	[ -z "$select" ] && exit 0
#done
[ "$select" = "Cancel" ] && exit 0
[ "$select" = "Logout" ] && i3exit logout
[ "$select" = "Lock" ] && i3exit lock
[ "$select" = "Power-off" ] && i3exit shutdown
[ "$select" = "Reboot" ] && i3exit reboot
[ "$select" = "Suspend" ] && i3exit suspend
[ "$select" = "Hibernate" ] && i3exit hibernate

