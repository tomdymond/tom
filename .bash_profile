HB_BIN=`brew --prefix`/bin
HB_SBIN=`brew --prefix`/sbin
MY_PREFIX="${HOME}/local"

PATH="${MY_PREFIX}/bin:${HB_BIN}:${HB_SBIN}:${PATH}"

# set up terminal colours
CLICOLOR='Yes'
LSCOLORS='Bxgxfxfxcxdxdxhbadbxbx'

# define the default editor
EDITOR=mvim

# set up virtualenvwrapper
#WORKON_HOME="${HOME}/.virtualenvs"
source "/usr/local/bin/virtualenvwrapper.sh"

export PATH EDITOR CLICOLOR LSCOLORS

# set up bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# set up autojump
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi


alias h='history'
alias lt='ls -lartG'
alias ll='ls -lartG'
alias knownhosts='vim $HOME/.ssh/known_hosts'


PS1='\[\e[1;32m\]\u@\H: \[\e[1;33m\]\d : \A :
\[\e[m\]\[\e[0;36m\]\w\[\e[m\]\n\[\e[0;33m\]\$\[\e[m\] '
cd development

workon ansible
source ansible/hacking/env-setup
export ANSIBLE_CONFIG=./ansible.cfg
