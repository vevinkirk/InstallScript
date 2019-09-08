#!/bin/bash

#if no command line arg given
#set os to unknown
if [ -z $1 ]
then
   os="*** Unknown OS ***"
elif [ -n $1 ]
then
#Make OS equal to first argument
     os=$1
fi
#os=$1 | tr '[:upper:]' '[:lower:]'
#use case statement to choose packagemanager
case $os in
	"apt") 
		sudo apt install -y vim
	;;
	"pacman")
		sudo pacman -Sy vim
	;;
	*)
	echo "make sure arguments are lowercase or the response may not be recongized by this program";;
esac
