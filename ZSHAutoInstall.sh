#!/bin/bash

#if no command line arg given
#set OS to unknown
if [ -z $1 ]
then
    os="*** Unknown OS ***"
elif [ -n $1 ]
then
#Make OS equal to first argument
     os=$1

fi

#use case statement to choose OS
case $os in
    "ubuntu")  sudo apt install zsh &&  zsh --version && sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)";;
    "centos")  sudo yum -y install zsh && zsh --version && sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)";;
    *) echo "Make sure arguments are lowercase or that response is not recongized by this program";;
esac
