#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Colour config
force_color_prompt=yes
alias ls='ls --color=auto'
alias grep='grep --colour=auto'


# PS1 colour and layout config (user@hostname directory)
# Based upon the linux mint .bashrc. Cleans it up a bit and make root red
if [[ ${EUID} == 0 ]] ; then
                PS1='\[\033[01;31m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] '
        else
                PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
fi

# Wine
export WINEPREFIX=$HOME/.config/wine/
export WINEARCH=win32

# Vim
export VISUAL=vim
export EDITOR=vim
