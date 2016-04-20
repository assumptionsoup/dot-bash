##############################################################################
# @file bash_profile
# @date January, 2016
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2016, All Rights Reserved
# @license MIT
##############################################################################

if [ -f ~/.profile ]; then
   source ~/.profile
fi

if [ -f ~/.bashrc ]; then
    # Hack so I don't get my PATH extensions from .bashrc
    # baked into my environment...
    PARENT=`ps -ef|grep $$|head -n 1`
    if [[ "$PARENT" != *"-/bin/bash -c gnome-session"* ]]; then
        . ~/.bashrc
    fi
fi

# User specific environment and startup programs
# Locale
export TZ='America/Los_Angeles'

# xmodmap -e "remove Lock = Caps_Lock"
# xmodmap -e "remove Control = Control_L"
# xmodmap -e "keysym Caps_Lock = Control_L"
# xmodmap -e "add Lock = Caps_Lock"
# xmodmap -e "add Control = Control_L"
##############################################################################
