#!/bin/bash
# Audiotool OSX Version 1.2
# Made for learning purpose
# Scheduled Backup Script
directory=`dirname "$0"`
cd "$directory"
clear
echo
echo --------------------------------
echo "Scheduled Backup"
echo --------------------------------
echo
echo --------------------------------
echo "Please ensure having Audiotool"
echo "placed to the Application Folder"
echo --------------------------------
echo "*** Else it won´t work! ***"
echo --------------------------------
echo
echo "Make a choice:"
echo
echo "1. Daily Backup"
echo "2. Weekly Backup"
echo "3. Monthly Backup"
echo "4. Exit"
echo --------------------------------
echo
read choice

if [[ $choice = "1" ]]; then
	#statements
	echo "Daily Backup"
	sudo echo '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Label</key>
	<string>com.scheduled.backup.daily</string>
	<key>Program</key>
	<string>Applications/audiotool.app/Contents/Resources/audiotool/backup.sh</string>
	<key>RunAtLoad</key>
	<true/>
	<key>StartCalendarInterval</key>
	<array>
		<dict>
			<key>Weekday</key>
			<integer>1</integer>
		</dict>
		<dict>
			<key>Weekday</key>
			<integer>2</integer>
		</dict>
		<dict>
			<key>Weekday</key>
			<integer>3</integer>
		</dict>
		<dict>
			<key>Weekday</key>
			<integer>4</integer>
		</dict>
		<dict>
			<key>Weekday</key>
			<integer>4</integer>
		</dict>
		<dict>
			<key>Weekday</key>
			<integer>5</integer>
		</dict>
		<dict>
			<key>Weekday</key>
			<integer>6</integer>
		</dict>
		<dict>
			<key>Weekday</key>
			<integer>7</integer>
		</dict>
	</array>
</dict>
</plist>' > /Library/LaunchDaemons/com.scheduled.backup.daily.plist
	launchctl load /Library/LaunchDaemons/com.scheduled.backup.daily.plist
	sleep 3
	echo "Daily Backup set"
	sleep 3
	clear
	sh ./audiotool.sh
elif [[ $choice = "2" ]]; then
	#statements
	echo "Weekly Backup"
	sudo echo '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Label</key>
	<string>com.scheduled.backup.weekly</string>
	<key>Program</key>
	<string>Applications/audiotool.app/Contents/Resources/audiotool/backup.sh</string>
	<key>RunAtLoad</key>
	<true/>
	<key>StartCalendarInterval</key>
	<array>
		<dict>
			<key>Day</key>
			<integer>5</integer>
		</dict>
		<dict>
			<key>Day</key>
			<integer>12</integer>
		</dict>
		<dict>
			<key>Day</key>
			<integer>19</integer>
		</dict>
		<dict>
			<key>Day</key>
			<integer>26</integer>
		</dict>
	</array>
</dict>
</plist>' > /Library/LaunchDaemons/com.scheduled.backup.weekly.plist 
	launchctl load /Library/LaunchDaemons/com.scheduled.backup.weekly.plist
	sleep 3
	echo "Weekly Backup set"
	sleep 3
	clear
	sh ./audiotool.sh
elif [[ $choice = "3" ]]; then
		#statements
		echo "Monthly Backup"
		sudo '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Label</key>
	<string>com.scheduled.backup.monthly</string>
	<key>Program</key>
	<string>Applications/audiotool.app/Contents/Resources/audiotool/backup.sh</string>
	<key>RunAtLoad</key>
	<true/>
	<key>StartCalendarInterval</key>
	<array>
		<dict>
			<key>Month</key>
			<integer>1</integer>
		</dict>
		<dict>
			<key>Month</key>
			<integer>2</integer>
		</dict>
		<dict>
			<key>Month</key>
			<integer>3</integer>
		</dict>
		<dict>
			<key>Month</key>
			<integer>4</integer>
		</dict>
		<dict>
			<key>Month</key>
			<integer>5</integer>
		</dict>
		<dict>
			<key>Month</key>
			<integer>6</integer>
		</dict>
		<dict>
			<key>Month</key>
			<integer>7</integer>
		</dict>
		<dict>
			<key>Month</key>
			<integer>8</integer>
		</dict>
		<dict>
			<key>Month</key>
			<integer>9</integer>
		</dict>
		<dict>
			<key>Month</key>
			<integer>10</integer>
		</dict>
		<dict>
			<key>Month</key>
			<integer>11</integer>
		</dict>
		<dict>
			<key>Month</key>
			<integer>12</integer>
		</dict>
	</array>
</dict>
</plist>' > /Library/LaunchDaemons/com.scheduled.backup.monthly.plist
		launchctl load	/Library/LaunchDaemons/com.scheduled.backup.monthly.plist
		sleep 3
		echo "Monthly Backup set"
		sleep 3
		clear
		sh ./audiotool.sh
	elif [[ $choice = "4" ]]; then
			#statements
			echo "Have a Backup there or be square!"
			echo "CheeridoO ..."
			sleep 3
			clear
			sh ./audiotool.sh
fi