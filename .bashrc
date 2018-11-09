#!/bin/bash
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/.bin"

[ -r ~/.dotfiles/exports ] && . ~/.dotfiles/exports
[ -r ~/.dotfiles/aliases ] && . ~/.dotfiles/aliases
[ -r ~/.bash_prompt ] && . ~/.bash_prompt
[ -r ~/.bin/z.sh ] && . ~/.bin/z.sh


