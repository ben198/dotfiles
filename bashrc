# Set Vim as default editor
export EDITOR=/usr/bin/vim 
# use vi commands to execute shell commands
set -o vi
# enable ctrl-s and ctrl-q
stty -ixon
# source nvm
if test -f ~/.nvm/nvm.sh; then . ~/.nvm/nvm.sh; fi
#
test -s ~/.alias && . ~/.alias || true
