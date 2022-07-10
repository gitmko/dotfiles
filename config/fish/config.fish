#            _
#  _ __ ___ | | _____    
# | '_ ` _ \| |/ / _ \   mko's fish config!
# | | | | | |   < (_) |  just a couple of aliases and personal jokes
# |_| |_| |_|_|\_\___/
#
#

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting		# disables fish's startup message
set TERM "xterm-256color"	# sets the terminal type
set EDITOR "nvim"		# sets the default editor to be neovim

# 'bat' as the manpager
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Fish colors
set fish_color normal '#81a1c1'
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command '#81a1c1'
set fish_color_error_ '#bf616a'
set fish_color_param '#81a1c1'

# dotfiles management
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
export GIT_AUTHOR_NAME="gitmko"
export GIT_AUTHOR_EMAIL="gitmko"

# VIM and emacs alias
alias vim='nvim'
alias em='/usr/bin/emacs -nw'
alias emacs="emacsclient -c -a 'emacs'"
alias doomsync="~/.emacs.d/bin/doom sync"
alias doomdoctor="~/.emacs.d/bin/doom doctor"
alias doomupgrade="~/.emacs.d/bin/doom upgrade"
alias doompurge="~/.emacs.d/bin/doom purge"
alias mov-cli="~/github/mov-cli/mov-cli"

# mkoOS aliases
alias color-dracula="~/mkoOS/script/color-dracula.sh"
alias color-doom="~/mkoOS/script/color-doom.sh"

# Changing "ls" to "exa"
alias ls='exa -al --color=always --icons --group-directories-first' # my preferred listing
alias la='exa -a --color=always --icons --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --icons --group-directories-first'  # long format
alias lt='exa -aT --color=always --icons --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# get the fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# pacman and yay
alias pacsyu='sudo pacman -Syu'                  # update only standard pkgs
alias pacsyyu='sudo pacman -Syyu'                # Refresh pkglist & update standard pkgs
alias yaysua='yay -Sua --noconfirm'              # update only AUR pkgs (yay)
alias yaysyu='yay -Syu --noconfirm'              # update standard pkgs and AUR pkgs (yay)
alias parsua='paru -Sua --noconfirm'             # update only AUR pkgs (paru)
alias parsyu='paru -Syu --noconfirm'             # update standard pkgs and AUR pkgs (paru)

# colorscripts (https://gitlab.com/dwt1/shell-color-scripts)
colorscript random

# friend aliases (inside joke i was talking about)
alias izabela="cowsay moo | lolcat"
alias melani="cowthink -f hellokitty i like women | lolcat"
alias void="echo 'hello void-chan' && figlet 'UwU' | lolcat"
alias metodij-chan="echo 'metodij chan: melani and void, I love you.' | lolcat && figlet 'OwO' | lolcat"

# the legendary starship prompt, edit at ~/.config/starship.toml
starship init fish | source
