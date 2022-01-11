#!/bin/bash
export BASH_SILENCE_DEPRECATION_WARNING=1
[ -r ~/.bashrc ] && . ~/.bashrc

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


source ${HOME}/.config/broot/launcher/bash/br
source /opt/homebrew/opt/asdf/libexec/asdf.sh
source ~/.asdf/plugins/java/set-java-home.bash