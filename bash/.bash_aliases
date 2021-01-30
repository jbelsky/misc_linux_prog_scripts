# Default to human readable
alias df="df -h"
alias du="du -h"

# Default to color grep
alias grep="grep --color"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# ls aliases
alias ls="ls -A -h --color=tty --group-directories-first"
alias ll="ls -l -A -h --color=tty --group-directories-first"
alias lt="ls -l -t -A -h --color=tty --group-directories-first"
alias dir='find -mindepth 1 -maxdepth 1 -type d | sed -s "s|^\./||g" | sort'

# ps commands
alias pss='ps -jH -ujasonbelsky'
alias psu='ps -H -u jasonbelsky -o "comm,pid,tname,nlwp,%cpu,%mem,uname,lstart,etime,cmd"'

# Line-wrap commands
alias sqlplus='rlwrap /scratch/sdc/oracle/software/bin/sqlplus'

#alias R="/opt/R/R-3.4.2/bin/R --no-save"
#alias Rscript="/opt/R/R-3.4.2/bin/x64/Rscript --vanilla --verbose"
#alias python3="/opt/python3/python-3.6.5/bin/python"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
