#!/bin/bash

alias config='/usr/bin/git --git-dir=/Users/ansont/.cfg/ --work-tree=/Users/ansont'

# Test for running under Parallels
if system_profiler SPHardwareDataType | grep --quiet Parallels
    then
        alias code='function __code() { code $* --disable-gpu; unset -f __code; }; __code'
fi

# Bash Prompt Setup
[ -r ~/.bash_prompt ] && . ~/.bash_prompt
[ -r ~/.bin/z.sh ] && . ~/.bin/z.sh


export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/.bin"
