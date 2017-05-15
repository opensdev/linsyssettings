#Append content of this file to .bashrc
if [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
fi

PS1='\[\e[33;1m\]\u@\h: \[\e[31m\]\W\[\e[0m\]\$ '
source ~/.git-completion.bash

