#!/bin/bash
# Audiotool OSX Version 1.2
# Made for learning purpose.
# Provides a Backup solution of your Plugin Folder. 
clear
directory=`dirname "$0"`
cd "$directory"
echo 
echo --------------------------------
echo "Audiotool OSX Version 1.2"
echo --------------------------------
echo
echo "Make a choice:"
echo
echo "1. Create Backup"
echo "2. Recover Backup"
echo "3. Scheduled Backup"
echo "4. Remove Backup Folder"
echo "5. Optimize OSX"
echo "6. Remove Audiotool"
echo "7. Exit"
echo --------------------------------
echo
read choice

if [[ $choice = "1" ]]; then
	#statements
	echo "Create Backup"
	sudo ditto /Library/Audio/Plug-Ins /Applications/Audiotool/Backup
	sleep 3
	echo "Backup created"
	sleep 3
	clear
	sh ./audiotool.sh 
elif [[ $choice = "2" ]]; then
		#statements
		echo "Recover Backup"
		sudo ditto /Applications/Audiotool/Backup /Library/Audio/Plug-Ins
		sleep 3
		echo "Backup recovered"
		sleep 3 
		clear
		sh ./audiotool.sh
	elif [[ $choice = "3" ]]; then
			#statements
			echo "Scheduled Backup"
			sleep 3
			clear 
			sudo sh ./schedback.sh
	elif [[ $choice = "4" ]]; then
			#statements
			echo "Remove Backup Folder"
		#	while [[ $nothing != 0 ]]; do
				#statements
				echo "Are you sure you want to permanently remove it? (yEs/nO)"
				read sure
				if [[ $sure = "yEs" ]]; then
					#statements
					sudo rm -r /Applications/Audiotool
					sleep 3 
					echo "Backup Folder removed"
					sleep 3
					clear
					sh ./audiotool.sh
				elif [[ $sure = "nO" ]]; then
						#statements
						echo "Mmmmkayyyy ... "
						sleep 3
						clear
						sh ./audiotool.sh
					else 
						echo "Open your mind and your eyes will follow ..."
						sleep 3
						clear
						exit
				fi
		#	done
		elif [[ $choice = "5" ]]; then
				#statements
				echo "Optimize OSX"
				sleep 3
				clear
				sh ./optimizer.sh
#	elif [[ $choice = "6" ]]; then
#			echo "Add Audiotool to /bin"
#			sudo ditto $directory/audiotool /bin
#			sleep 3
#			echo "Audiotool added. Open Terminal and type audiotool"
#			sleep 3 
#			clear
#			sh ./audiotool.sh
	elif [[ $choice = "6" ]]; then
			#statements
			echo "Remove Audiotool"
			sudo rm -i /bin/audiotool
			sleep 3
			echo "Audiotool removed"
			sleep 3
			clear
			sh ./audiotool.sh
		elif [[ $choice = "7" ]]; then
				#statements
				echo "Bye, see you next time!"
				sleep 3
				clear
				exit
			else
				echo "Quitting ..."
				sleep 3 
				clear
				exit

fi