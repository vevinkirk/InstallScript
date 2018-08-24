#!/bin/bash

#Menu for Install Script
echo "This program is constantly updated and will install applications for you. The list will be presented below and will fetch and install programs for you. This script comes with no warranty. Please use at your own risk."
prompt='Please Enter Your Choice: '
options=("ZSH Install" "ZSH syntax highlighting" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "ZSH Install")
            echo "You Chose Choice ZSH Install"
            osprompt='Choose your option in OS: '
            osoptions=("ubuntu" "centos" "Quit")
            select osopt in "${osoptions[@]}"
            do
                case $osopt in
                    "ubuntu")
                        echo "You Chose ubuntu Install"
                        ./ZSHAutoInstall.sh ubuntu
                        ;;
                    "centos")
                        echo "You Chose centos Install"
                        ./ZSHAutoInstall.sh centos
                        ;;
                    "Quit")
                        break
                        ;;
                   *)
                       echo "invalid option $REPLY";;
                esac
            done

            ;;
        "ZSH syntax highlighting")
            echo "You chose to install ZSH syntax highlighting"
            ./ZSHSyntaxHighlightingInstall.sh
            ;;
        "Option 3")
            echo "You chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            ;;
        *)echo "invalid option $REPLY";;
    esac
done
