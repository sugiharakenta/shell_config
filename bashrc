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
# PS1="\[\033[1;33m\][\u@\h] \033[1;33m\][`\date '+%H:%M'`] \033[1;37m\][\W] \n-> \$\[ \033[0m\]"
PS1="\[\033[1;33m\][\u@\h] \033[1;33m\][\t] \033[1;37m\][\W] \n-> \$\[ \033[0m\]"

# /usr/local/bin/bash ~/.bash_profile
source /usr/local/bin/thisroot.sh

# Geant4 settings
# geant4_class="4.10.03"
geant4_class="4.10.06"
# geant4_class="g4py"
# geant4_class="g4qmd"
# geant4_class="jqmd"
# geant4_class="gem"
# geant4_class="ggnuclnucl"
if [ "$geant4_class" = "4.10.03" ]; then
    source /Users/sugiharakenta/Geant4/geant4.10.03.p01_build/bin/geant4.sh
elif [ "$geant4_class" = "4.10.06" ]; then
    source /Users/sugiharakenta/Geant4/geant4.10.06_build/bin/geant4.sh
elif [ "$geant4_class" = "g4py" ]; then
    source /Users/sugiharakenta/Geant4/geant4.10.06_g4pybuild/bin/geant4.sh
elif [ "$geant4_class" = "g4qmd" ]; then
    source /Users/sugiharakenta/Geant4/geant4.10.06_g4qmd_build/bin/geant4.sh
elif [ "$geant4_class" = "jqmd" ]; then
    source /Users/sugiharakenta/Geant4/geant4.10.06_jqmd_build/bin/geant4.sh
elif [ "$geant4_class" = "gem" ]; then
    source /Users/sugiharakenta/Geant4/geant4.10.06_evaporation_build/bin/geant4.sh
elif [ "$geant4_class" = "ggnuclnucl" ]; then
    source /Users/sugiharakenta/Geant4/geant4.10.06_glauber_gribov_build/bin/geant4.sh
fi

export cluster=sugihara@133.5.143.27
export station=sugihara@133.5.143.100
export hokusai=ksugi@hokusai.riken.jp
export LANG=en_US.UTF-8

~/programming/python/pyfiglet/bash.py

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
