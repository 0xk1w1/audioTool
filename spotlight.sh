#!/bin/bash
# Audiotool OSX Version 1.2
# Made for learning purpose
# Optimize OSX Script
# Spotlight Tweak
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo
echo --------------------------------
echo "Tweak Spotlight"
echo --------------------------------
echo
echo "Make a choice:"
echo
echo "1. Disable Spotlight"
echo "2. Gimmeback ma Spotlight"
echo "3. Exit"
echo --------------------------------
echo 
read choice

if [[ $choice = "1" ]]; then
	#statements
	echo "Disable Spotlight"
	sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
	echo "Spotlight disabled"
	sleep 3
	clear
	sh ./optimizer.sh
elif [[ $choice = "2" ]]; then
		#statements
		echo "Too lazy to look for it yourself?"
		sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
		echo "Yayy, Spotlight found back to light!"
		sleep 3
		clear
		sh ./optimizer.sh
	elif [[ $choice = "3" ]]; then
			#statements
			echo "Have a nice one! Hack the Gibson, watch who´s watching you!"
			sleep 3
			clear
			sh ./optimizer.sh
		else
			echo "Bash does not support Siri yet!"
			sleep 3
			clear
			exit 
fi