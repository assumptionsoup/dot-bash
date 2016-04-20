# Mouse
alias mouseLeft="xinput --set-button-map \"Razer Razer DeathAdder\" 3 2 1 4 5 6 7 2 --set-ptr-feedback \"Razer Razer DeathAdder\" 4 0 1"
alias mouseRight="xinput --set-button-map \"Razer Razer DeathAdder\" 3 2 1 4 5 6 7 8 --set-ptr-feedback \"Razer Razer DeathAdder\" 4 0 1"
alias mouseNormal="xinput --set-button-map \"Razer Razer DeathAdder\" 1 2 3 4 5 6 7 8 --set-ptr-feedback \"Razer Razer DeathAdder\" 4 0 1"

alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


alias subl='sublime_text $@'
alias ipy='ipython'
alias nowhitespace='perl -p -i -e "s%(^.*?)([^\S\r\n]+)$%\1%g"'

# De-alias rm from "rm -i" back to the original command
alias rm="/usr/bin/env rm"

# coding package shortcuts
function p()
{
    cd `app_latest "$@"`
}
function pl()
{
    cd `app_latest "$@" -l`
}
function wd()
{
    cd `app_source "$@"`
}

# gdb debug
# Type "r" + return to start
# After a crash enter the following to see a stacktrace:
#    python import libpython
#    py-bt
#
# If you forgot to append the path beforehand, run:
# python import sys;import os;sys.path.append("PYTHON_INSTALL_DIR" + '/lib/python2.7/site-packages/Cython/Debugger')
alias mayad='maya -d gdb'
alias ag="ag --column --nogroup"
