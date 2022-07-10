#!/usr/bin/env bash

emacs --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "~/.config/bspwm/colors/colors-dracula.org")'
emacs --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "~/.config/polybar/colors/colors-dracula.org")'
emacs --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "~/.config/alacritty/themes/colors-dracula.org")'
emacs --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "~/.config/dunst/colors-dracula.org")'

pkill dunst
bspc wm -r

echo "Press 'SPC h t' to change the theme in Doom Emacs" &
echo 'Enjoy your new color scheme!'
exit
