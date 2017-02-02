#!/bin/bash
# Audiotool OSX Version 1.2
# Made for learning purpose.
# Provides a Backup solution of your Plugin Folder.
directory=`dirname "$0"`
cd "$directory"
sudo ditto /Library/Audio/Plug-Ins /Applications/Audiotool/Backup
