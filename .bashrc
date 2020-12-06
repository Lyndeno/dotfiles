#
# ~/.bashrc
#

# Use bash-completion, if available
#[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
#    . /usr/share/bash-completion/bash_completion

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

#export PATH="/home/lsanche/.gem/ruby/2.7.0/bin:$PATH"
export _JAVA_AWT_WM_NONREPARENTING=1


#alias planner='emacs ~/Documents/University/Term\ 7\ -\ Fall\ 2020/tasks.org'

if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
then
	exec fish
fi
