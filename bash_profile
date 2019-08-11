#modified by Tim
source ~/.colors
export TERM=xterm-256color
# Backup prompt. Use if you can't use powerline or the powerline font
CYAN='\[\033[36m\]'
RED='\[\033[31m\]'
GREEN='\[\033[32m\]'
PINK='\[\033[35m\]'
WHITE='\[\033[37m\]'
CLEAR='\[\033[0m\]'
#export PS1="${CYAN}[${RED}\u${CLEAR}@${GREEN}\h${CYAN}] ${PINK}\w\n${WHITE}\$${CLEAR} "

function _update_ps1() {
     PS1="$(~/powerline-shell/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
