#!/bin/bash

#Menu for Install Script
echo "This program is constantly updated and will install applications for you. The list will be presented below and will fetch and install programs for you. This script comes with no warranty. Please use at your own risk."
echo "If you are presented with a # without a prompt push enter and it will redisplay the current options you have."
prompt='Please Enter Your Choice: '
options=("Vim" "ZSH Install" "ZSH syntax highlighting" "SpaceMacs" "AwesomeWM" "tmux"  "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "ZSH Install")
            echo "You Chose Choice ZSH Install"
            osprompt='Choose your package manager: '
            osoptions=("apt" "yum" "pacman" "Quit")
            select osopt in "${osoptions[@]}"
            do
                case $osopt in
                    "apt")
                        echo "You chose apt Install"
                        ./modules/ZSHAutoInstall.sh apt
                        ;;
                    "yum")
                        echo "You chose yum Install"
                        ./modules/ZSHAutoInstall.sh yum
                        ;;
		    "pacman")
			echo "You chose pacman install"
			./modules/ZSHAutoInstall.sh pacman
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
            chmod +x ZSHSyntaxHighlightingInstall.sh && ./modules/ZSHSyntaxHighlightingInstall.sh
            ;;
        "SpaceMacs")
            echo "You chose choice $REPLY which is $opt"
	    chmod +x SpaceMacsInstall.sh && ./modules/SpaceMacsInstall.sh
            ;;
	"AwesomeWM")
	    echo "You chose AwesomeWM install"
	    osprompt='Choose your package manager: '
	    osoptions=("apt" "pacman" "Quit")
	    select osopt in "${osoptions[@]}"
	    do
	    	case $osopt in
		    "apt")
			echo "You chose apt install"
			./modules/AwesomeWMInstall.sh apt
			;;
		    "pacman")
			echo "You chose pacman install"
			./modules/AwesomeWMInstall.sh pacman
			;;
		    "Quit")
		    	break
		    	;;
		  *)
			echo "invalid option $REPLY";;
		esac
	    done
	    ;;
	"Vim")
    	    echo "You chose to install vim (good choice legend!)"
	    osprompt='Choose your package manager: '
	    osoptions=("apt" "pacman" "Quit")
	    select osopt in "${osoptions[@]}"
	    do
		case $osopt in
	            "apt")
	    		echo "You chose apt install"
    			./modules/VimInstall.sh apt
			;;
		    "pacman")
    			echo "You chose pacman install"
			./modules/VimInstall.sh pacman
			;;
		    "Quit")
    			break
			;;
		*)
			echo "invalid options $REPLY";;
		esac
	     done
	     ;;	     
        "Quit")
            break
            ;;
        *)echo "invalid option $REPLY";;
    esac
done
