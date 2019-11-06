HISTSIZE=5000
########## ~/.profile doit exister et être exécutable avec :
#! /bin/bash
#if [ -n "$BASH_VERSION" ]; then
#    if [ -f "$HOME/.bashrc" ]; then
#        . "$HOME/.bashrc"
#    fi
#fi
########
# MES RAJOUTS (A copier coller dans /root/.bash pour en bénéficier en root également)
#### ALIAS COMMANDE SYS ####
alias ls="ls --color"
alias grep="grep --color"
alias ll="ls -la"
alias lh="ls -lh"
alias la="ls -a"
alias igrep="grep -i"
##### ALIAS NESS ROOT ####
alias maj="sudo apt update && sudo apt upgrade"
alias swap="sudo swapoff -a && sudo swapon -a"
##### ALIAS SYSTEMES ####
alias gg="ping google.fr"
alias bat="sudo tlp bat"
alias power="sudo tlp ac" 
##### ALIAS PERSOS ######
alias flic="nmap -v -Pn -A"
alias lst="ls -c1X"
alias youtube2mp3="youtube-dl -t -x --audio-format mp3 --audio-quality 0"
alias youtube2mp4="youtube-dl -t -f mp4"
alias shutdown="sudo shutdown"
alias testoptimus="primusrun glxspheres" 
alias pileface="shuf -i 0-1 -n 1"
alias dc="docker-compose"
alias dcd="docker-compose down"
alias dcu="docker-compose up -d"
alias de="docker-compose exec"
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias cl="clear"
alias pbc="php bin/console"
alias imroot="sudo chown -R axel ."
##### FONCTIONS #####
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' ne peut etre extrait par ex()" ;;
    esac
  else
    echo "'$1' fichier invalide"
  fi
}
# Random password generator (8 caractères par défaut)
genpasswd() {
date +%s | sha256sum | base64 | head -c$1 ;echo
}
###### PROMPT ######
if [ "$UID" -ge 500 ] ; then 
        PS1="\# \[\e[0;36m\][\t]\[\e[0;m\] \[\e[0;32m\]\u@\h\[\e[0;m\]: \[\e[1;35m\]\w\[\e[0;m\] \[\e[1;32m\] \\$\[\e[0;m\] " 
fi
if [ "$UID" -eq 0 ] ; then
        PS1="\# \[\e[0;36m\][\t]\[\e[0;m\] \[\e[0;31m\]\u@\h\[\e[0;m\]: \[\e[1;35m\]\w\[\e[0;m\] \[\e[1;31m\] \\$\[\e[0;m\] "
fi
