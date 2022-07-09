#!/usr/bin/env bash

# Menu Script

PS3='Please choose your color scheme: '
options=("Nord" "Dracula" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Nord")
            source $HOME/color-scripts/color-nord.sh && exit 1
            ;;
        "Dracula")
            source $HOME/color-scripts/color-dracula.sh && exit 1
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
