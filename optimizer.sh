#!/bin/bash
# Audiotool OSX Version 1.2
# Made for learning purpose
# Optimize OSX Script
# Provides several tweaks for increased performance
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo
echo --------------------------------
echo "Optimize OSX Performance"
echo --------------------------------
echo
echo "Make a choice:"
echo
echo "1. Tweak Dashboard"
echo "2. Tweak Notifications"
echo "3. Tweak Mission Control"
echo "4. Tweak Spotlight"
echo "5. Tweak All Services"
echo "6. Exit"
echo --------------------------------
echo
read choice

if [[ $choice = "1" ]]; then
	#statements
	clear
	sh ./dashboard.sh
elif [[ $choice = "2" ]]; then
		#statements
		clear
		sh ./notifications.sh
	elif [[ $choice = "3" ]]; then
			#statements
			clear
			sh ./missioncontrol.sh
		elif [[ $choice = "4" ]]; then
				#statements
				clear
				sh ./spotlight.sh
			elif [[ $choice = "5" ]]; then
					#statements
					clear
					sh ./allservices.sh
				elif [[ $choice = "6" ]]; then
						#statements
						echo "Bye, see you next time!"
						sleep 3
						clear
						sh ./audiotool.sh
					else
						echo "What about those Pink Elephants?"
						sleep 3
						clear
						sh ./optimizer.sh
fi