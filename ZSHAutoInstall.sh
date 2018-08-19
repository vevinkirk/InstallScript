#!/bin/bash
echo "Hello, World!"
echo "Knowledge is power"

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
    "ubuntu")  sudo apt install zsh &&  zsh --version && sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"&& git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;;
    "centos")  sudo yum -y install zsh && zsh --version && sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"&& git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;;
    *) echo "Make sure arguments are lowercase or that response is not recongized by this program";;
esac
