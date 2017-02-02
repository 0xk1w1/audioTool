#!/bin/bash
# Audiotool OSX Version 1.2
# Made for learning purpose
# Optimize OSX Script
# Dashboard Tweak 
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo
echo --------------------------------
echo "Tweak Dashboard"
echo --------------------------------
echo
echo "Make a choice:"
echo
echo "1. Disable Dashboard"
echo "2. Gimmeback ma Dashboard"
echo "3. Exit"
echo --------------------------------
echo 
read choice

if [[ $choice = "1" ]]; then
	#statements
	echo "Disable Dashboard"
	sudo defaults write com.apple.dashboard mcx-disabled -boolean YES
	killall Dock
	echo "Dashboard disabled"
	sleep 3
	clear
	sh ./optimizer.sh
elif [[ $choice = "2" ]]; then
		#statements
		echo "Mimimimimiiiii ..."
		sudo defaults write com.apple.dashboard mcx-disabled -boolean NO
		killall Dock
		echo "There´s your beloved Dashboard!"
		sleep 3
		clear	
		sh ./optimizer.sh
	elif [[ $choice = "3" ]]; then
			#statements
			echo "Enjoy yourself, be like Coffee ..."
			sleep 3
			clear
			sh ./optimizer.sh
		else 
			echo "You had one simple mission ..."
			sleep 3
			clear
			exit
fi