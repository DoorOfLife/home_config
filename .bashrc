#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl
UTHER="mrdoor"
MRSCRIPT="/home/$UTHER/repos/mrscript"
SHOTS="/home/$UTHER/shots"
export PATH="$MRSCRIPT:$PATH"
export TERMINAL="alacritty"
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
alias fixdisplay="xlayoutdisplay"
alias keycodes='xev | awk -F '\''[ )]+'\'' '\''/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'\'''
alias untar="tar -xvf"
alias fixkb="setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl"
source /usr/share/git/completion/git-prompt.sh
prompt_command () {
	if [ $? -eq 0 ]; then # set an error string for the prompt, if applicable
		ERRPROMPT=" "
	else
		ERRPROMPT=' -> ($?)'
	fi
	if [ "\$(type -t __git_ps1)" ]; then # if we're in a Git repo, show current branch
		BRANCH="\$(__git_ps1 '[ %s ]')"
	fi
	PROMPT='~ '
	local GREEN="\[\033[0;32m\]"
	local CYAN="\[\033[0;36m\]"
	local BCYAN="\[\033[1;36m\]"
	local BLUE="\[\033[0;34m\]"
	local GRAY="\[\033[0;37m\]"
	local DKGRAY="\[\033[1;30m\]" # I changed this to default for now
	local WHITE="\[\033[1;37m\]"
	local RED="\[\033[0;31m\]"
	# return color to Terminal setting for text color
	local DEFAULT="\[\033[0;39m\]"
	# set the titlebar to the last 2 fields of pwd
	local TITLEBAR=`pwd`
	export PS1="\n${BLUE}\u${DKGRAY}@${CYAN}\h${RED}${ERRPROMPT}${WHITE}${TITLEBAR} ${GRAY} ${GREEN}${BRANCH}\n${GRAY}${PROMPT}${DEFAULT}"

}

PROMPT_COMMAND=prompt_command

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

