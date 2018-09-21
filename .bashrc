if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [ -e ~/.bash_profile ]; then
        . ~/.bash_profile
fi

#some more ls settings
alias ll='ls -ltrh'
alias la='ls -A'
alias ls='ls -GF'
export LSCOLORS=GxfxcxdxBxegedabagacad

#useful aliases
alias vb="vi ~/.bashrc"
alias srcb="source ~/.bashrc"
alias word="open -a Microsoft\ Word"
alias excel="open -a Microsoft\ Excel"
alias powerpoint="open -a Microsoft\ PowerPoint"
alias firefox="open -a Firefox.app"
alias date="date '+%Y-%m-%d %a %H:%M:%S'"

#useful setting
shopt -s extglob
# set -o noclobber

#color settings
PS1="\[\033[1;33m\][\u@\h] \033[1;33m\][`\date '+%H:%M'`] \033[1;37m\][\W] \n-> \$\[ \033[0m\]"

# /usr/local/bin/bash ~/.bash_profile
source /usr/local/root/bin/thisroot.sh
source /usr/local/geant4/bin/geant4.sh

export cluster=sugihara@133.5.143.27
export station=sugihara@133.5.143.100
export LANG=en_US.UTF-8

_path=""
for _p in $(echo $PATH | tr ':' ' '); do
  case ":${_path}:" in
    *:"${_p}":* )
      ;;
    * )
      if [ "$_path" ]; then
        _path="$_path:$_p"
      else
        _path=$_p
      fi
      ;;
  esac
done
PATH=$_path

unset _p
unset _path
