#!/bin/bash
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.cargo/bin"

[ -r ~/.dotfiles/exports ] && . ~/.dotfiles/exports
[ -r ~/.dotfiles/aliases ] && . ~/.dotfiles/aliases
[ -r ~/.bash_prompt ] && . ~/.bash_prompt
[ -r ~/.bin/z.sh ] && . ~/.bin/z.sh
[ -r /usr/local/opt/asdf/asdf.sh ] && source /usr/local/opt/asdf/asdf.sh