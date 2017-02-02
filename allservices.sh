#!/bin/bash
# Audiotool OSX Version 1.2
# Made for learning purpose
# Optimize OSX Script
# All Services Tweak tweaking all services at once
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo
echo --------------------------------
echo "Tweak All Services"
echo --------------------------------
echo
echo "Make a choice:"
echo
echo "1. Disable All Dudd Shit"
echo "2. Gimmeback All Dudd Shit"
echo "3. Exit"
echo --------------------------------
echo 
read choice

if [[ $choice = "1" ]]; then
	#statements
	echo "Yes Sir, my pleasure!"
	sudo defaults write com.apple.dashboard mcx-disabled -boolean YES
	launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
	defaults write com.apple.dock mcx-expose-disabled -bool TRUE
	launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
	killall Dock 
	killall NotificationCenter
	echo "All Shit disabled"
	sleep 3
	clear 
	sh ./optimizer.sh
elif [[ $choice = "2" ]]; then
		#statements
		echo "Are you sure? Giving up on Audio? What´s the deal bro?"
        echo --------------------------------------------------------
    #	while [[ $nothing != 0 ]]; do
			#statements
			echo "Yeah I´m sure. Need dudd Shit back! (y)"
			echo "Naaah, you´re right. Forget about it... (n)"
			read sure
			if [[ $sure = "y" ]]; then
				#statements
				echo "Ok bra, here you go!"
				sudo defaults write com.apple.dashboard mcx-disabled -boolean NO
				launchctl load -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
				defaults delete com.apple.dock mcx-expose-disabled
				launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
				killall Dock
				killall NotificationCenter
				echo "Shit´s back broseph!"
				sleep 3
				clear
				sh ./optimizer.sh
			elif [[ $sure = "n" ]]; then
					#statements
					echo "Glad you made a choice! Never change a running system!"
					sleep 3
					clear
					sh ./optimizer.sh
				else
					echo "You?? Here again??? oO"
					sleep 3
					clear
					exit
			fi
    #	done
	elif [[ $choice = "3" ]]; then
			#statements
			echo "Bye, have a good time!"
			sleep 3
			clear
			sh ./optimizer.sh
fi