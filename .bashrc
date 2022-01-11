#!/bin/bash
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac


export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.cargo/bin"

[ -r ~/.dotfiles/exports ] && . ~/.dotfiles/exports
[ -r ~/.dotfiles/aliases ] && . ~/.dotfiles/aliases
[ -r ~/.bash_prompt ] && . ~/.bash_prompt
[ -r ~/.bin/z.sh ] && . ~/.bin/z.sh
[ -r /usr/local/opt/asdf/asdf.sh ] && source /usr/local/opt/asdf/asdf.sh
[ -r ~/.local_exports ] && . ~/.local_exports
if [ $machine = 'Linux' ]
  then
    [[ -r "/home/linuxbrew/.linuxbrew/etc/profile.d/bash_completion.sh" ]] && . "/home/linuxbrew/.linuxbrew/etc/profile.d/bash_completion.sh"
fi

if [ $machine = 'Mac' ]
  then
    [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
fi
#source /Users/ansont/.config/broot/launcher/bash/br
#source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
eval "$(starship init bash)"
source ${HOME}/.config/broot/launcher/bash/br

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
