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
# enable 256-color for terminal applications
export TERM="xterm-256color"

## Helper scripts for Windows Subsystem for Linux
# Go to home directory
cd ~/
# Get IP address of Ubuntu machine
IP="$(ifconfig eth0 | grep 'inet ' | cut -d\s -f1 | awk '{print $2}')"
echo "Your IP address is $IP"
