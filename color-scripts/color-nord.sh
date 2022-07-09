#!/usr/bin/env bash

emacs --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "~/.config/bspwm/colors/colors-nord.org")'
emacs --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "~/.config/polybar/colors/colors-nord.org")'
emacs --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "~/.config/alacritty/themes/colors-nord.org")'

bspc wm -r

sleep 40 &
echo "Press 'SPC h t' to change the theme in Doom Emacs" &
sleep 40 &
echo 'Enjoy your new color scheme!'
