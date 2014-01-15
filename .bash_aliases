#
# ~/.bash_aliases
#

alias ls='ls --color=auto'
alias ll='ls -al'
alias lll='ll -i -h --time-style=long-iso'

alias sshfs='sshfs -o Ciphers=arcfour -o cache_stat_timeout=600 -o workaround=nodelaysrv'

#shortcuts
alias x='startx'
alias 256colors='(x=`tput op` y=`printf %76s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)'


#quick edit
alias suvim='sudo vim'
alias ehosts='sudo vim /etc/hosts'
alias ebash="vim ~/.bashrc"
alias ealias="vim ~/.bash_aliases"

#ssh tunnel
alias sshtunnel='ssh -qTfnN -D 8080'

#power manage
alias bye='sudo shutdown -h now'
alias away="sudo sh -c 'echo -n mem > /sys/power/state'"

#git
alias gs="git status"
alias gd="git diff"
alias m="git add .; git commit -m"

#utils
alias myip="curl ifconfig.me"
alias serverthis="python2 -m SimpleHTTPServer"

mkalias () { echo "alias $1='$2'" >> ~/.bash_aliases; }

extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1     ;;
      *.tar.gz)    tar xzf $1     ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar e $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xf $1      ;;
      *.tbz2)      tar xjf $1     ;;
      *.tgz)       tar xzf $1     ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)     echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
alias mydo="ssh root@198.199.101.204"
alias grep='grep --color=auto'
