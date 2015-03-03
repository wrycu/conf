   #modified by Tim
source ~/.colors
export TERM=xterm-256color
export PS1="\e[36m[\e[m\e[31m\u\e[m@\e[32m\h\e[m\e[36m]\e[m \e[35m\w\e[m\n\\e[37m$\e[m "

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
