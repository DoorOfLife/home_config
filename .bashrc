#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
UTHER="mrdoor"
MRSCRIPT="/home/$UTHER/repos/mrscript"
SHOTS="/home/$UTHER/shots"
export PATH="$MRSCRIPT:$PATH"
alias ls='ls --color=auto'
alias remove='sudo pacman -Rs'
alias bashrc="vim ~/.bashrc && . ~/.bashrc" 
alias ignore="$MRSCRIPT/add2gitignore.sh"
alias except="$MRSCRIPT/except_from_gitignore.sh"
alias update="sudo pacman -S --sysupgrade --refresh --refresh"
alias search="pacman -Ss"
alias clean="sudo pacman -S --clean"
alias aurinstall="makepkg -sirC"
alias install="sudo pacman -S --refresh --needed"
alias clipshot="maim --select | xclip -selection clipboard -t image/png"
alias quickshot="maim --select $SHOTS/`date +%s`.png"
alias oi="$MRSCRIPT/open_image.sh"
alias i3conf="vim /home/$UTHER/.config/i3/config"
alias i3reload="i3-msg reload && i3-msg restart"
PS1='[\u@\h \W]\$ '

