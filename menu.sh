#!/bin/bash

press_enter(){
	echo -en "\nPress Enter to Continue"
	read
	clear

}

selection=
until [ "$selection" -eq "0" ]; do
	echo "
	PROGRAM MENU
	1. display ls result
	2. display pwd result
	
	0. exit program
"

	echo -n "Enter Selection:" 
	read selection
	echo "?"
	case $selection in 
	1 ) ls ; press_enter;;
	2 ) pwd ; press_enter;;
	0 ) exit ;; 
	* ) echo "Please enter 1, 2, or 0" ; press_enter;;
	esac
done
	


