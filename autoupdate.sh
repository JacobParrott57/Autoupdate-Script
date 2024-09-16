#!/bin/bash
#making it look good don't hate lol
echo "╔═════════════════════════════════════════════════════════╗";
echo "║    _         _          _   _           _       _       ║";
echo "║   / \  _   _| |_ ___   | | | |_ __   __| | __ _| |_ ___ ║";
echo "║  / _ \| | | | __/ _ \  | | | | '_ \ / _  |/ _  | __/ _ \║";
echo "║ / ___ \ |_| | || (_) | | |_| | |_) | (_| | (_| | ||  __/║";
echo "║/_/   \_\__,_|\__\___/   \___/| .__/ \__,_|\__,_|\__\___|║";
echo "║                              |_|                        ║";
echo "╚═════════════════════════════════════════════════════════╝";
echo ''
#Welcoming the user
echo 'Hello,' $USER.
date=$(date)
echo 'it is currently' $date
echo
#the thing that matters
echo 'running update...'
sudo apt-get update -y > /dev/null
echo
echo done..
echo
echo 'running upgrade...'
sudo apt-get -qq upgrade -y
echo
echo done..
echo 'removing and cleaning extras...'
sudo apt autoremove -y
sudo apt autoclean -y
echo
echo done..
echo
#after install stuff, thx ezra
echo "What do you want to do now?"
echo
echo '1) Shutdown'
echo '2) Reboot'
echo '3) Exit'
echo
read -p 'Enter your choice [1-3] ' choice
case $choice in
	1)
		echo 'Shutting Down...'
		sudo shutdown now
		;;
	2)
		echo 'Rebooting...'
		sudo reboot
		;;
	3)
		echo 'Exiting...'
		clear
		exit 1
		;;
esac
