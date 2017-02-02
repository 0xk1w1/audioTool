# audioTool
Advanced Backup Tool for Audio Professionals 

audiotool is an automator app for OSX / macOS which consists of a dash of bash scripts. 

To compile as such from source open Automator.app from /Applications and create new application. Go to Actions and find Utilities in the Library. Choose Run Apple Script, erase the violet text of the Box in the Drag and Drop Workflowarea to the right and paste this Apple Script into there:

set d to text item delimiters
set text item delimiters to "/"
set f to (POSIX path of (path to me))'s text 1 thru text item -3 & "/"
set text item delimiters to d
set startApplication to "sh " & quoted form of (f & "audiotool.app/Contents/Resources/audiotool/audiotool.sh")

tell application "Terminal"
	if (count of windows) is 0 then
		do script startApplication
	else
		do script startApplication in window 1
	end if
	activate
end tell

Save as audiotool and exit Automator. 
Paste the content of this repository into /Applications/audiotool.app/Contents/Resources/audiotool

Enjoy audiotool. 

# Please Note:
audiotool might not properly function if you i.e. rename it or place it anywhere else than /Applications! All scheduled Backups run as LaunchDaemons! If you need to tweak the scheduled times themselves just go ahead and install Xcode, doubleClick .plist files respectively and just edit them to your needs. 

The very nature of audiotool at this stage of development is to merge backups! 
Though future releases are planned to cover i.e. that you may choose to merge or stack your backups. 
