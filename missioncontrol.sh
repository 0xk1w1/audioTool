#!/bin/bash
# Audiotool OSX Version 1.2
# Made for learning purpose
# Optimize OSX Script
# MissionControl Tweak
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo
echo --------------------------------
echo "Tweak MissionControl"
echo --------------------------------
echo
echo "Make a choice:"
echo
echo "1. Disable MissionControl"
echo "2. Gimmeback ma MissionControl"
echo "3. Exit"
echo --------------------------------
echo 
read choice

if [[ $choice = "1" ]]; then
	#statements
	echo "Disable MissionControl"
	sudo defaults write com.apple.dock mcx-expose-disabled -bool TRUE 
	killall dock
	echo "MissionControl disabled"
	sleep
	clear
	sh ./optimizer.sh
elif [[ $choice = "2" ]]; then
		#statements
		echo "What you want with it anyway? "
		sudo defaults delete com.apple.dock mcx-expose-disabled
		killall Dock 
		echo "There you have it ..."
		sleep 3
		clear
		sh ./optimizer.sh
	elif [[ $choice = "3" ]]; then
			#statements
			echo "A man´s gotta do what he´s gotta do ..."
			sleep 3
			clear
			sh ./optimizer.sh
		else
			echo "I kinda was just waiting for that"
			sleep 3
			clear
			exit 
fi