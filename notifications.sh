#!/bin/bash
# Audiotool OSX Version 1.2
# Made for learning purpose
# Optimize OSX Script
# Notifications Tweak
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo
echo --------------------------------
echo "Tweak Notifications"
echo --------------------------------
echo
echo "Make a choice:"
echo
echo "1. Disable Notifications"
echo "2. Gimmeback ma Notifications"
echo "3. Exit"
echo --------------------------------
echo 
read choice

if [[ $choice = "1" ]]; then
	#statements
	echo "Disable Notifications"
	sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
	killall NotificationCenter 
	echo "NotificationCenter disabled"
	sleep 3
	clear
	sh ./optimizer.sh
elif [[ $choice = "2" ]]; then
		#statements
		echo "Well, you name it ..."
		sudo launchctl load -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
		echo "Reboot to get your NotificationCenter back!"
		sleep 3
		clear 
		sh ./optimizer.sh
	elif [[ $choice = "3" ]]; then
			#statements
			echo "Oh yeah ... I´ll wait. Bye ..."
			sleep 3
			clear 
			sh ./optimizer.sh
		else
			echo "Damn, what´s wrong with you oO"
			sleep 3
			clear
			exit
fi