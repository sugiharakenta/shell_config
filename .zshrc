#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# function path
fpath=(/usr/share/zsh/5.3/functions ${fpath})

# completion
autoload -Uz compinit
compinit

# color
autoload -Uz colors
colors

PROMPT="%B${fg[green]}[%n@%m]${reset_color}%b %B${fg[green]}[%T]${reset_color}%b %B${fg[white]}[%c]${reset_color}%b
%B${fg[yellow]}-> %#${reset_color}%b "

# some ls settings
alias ls='ls -GF'
alias la='ls -A'
alias ll='ls -ltrh'
export LSCOLORS=GxfxcxdxBxegedabagacad

# useful aliases
alias vz="vi ~/.zshrc"
alias srcz="source ~/.zshrc"
alias word="open -a Microsoft\ Word"
alias excel="open -a Microsoft\ Excel"
alias powerpoint="open -a Microsoft\ PowerPoint"
alias firefox="open -a Firefox.app"
alias date="date '+%Y-%m-%d %a %H:%M:%s'"

# useful settings
setopt globdots
setopt extended_glob
# setopt ksharrays
# unsetopt promptcr

# history
HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

# ignore duplication command history list
setopt hist_ignore_dups

# share command history data
setopt share_history

# ignore history command to HISTFILE
setopt hist_no_store

# remove older duplication command in history list
setopt hist_save_no_dups

# execute history expansion immediately
unsetopt hist_verify

# root settings
source /usr/local/root/bin/thisroot.sh

# geant4 settings
cd /usr/local/geant4/bin; source geant4.sh; cd - > /dev/null

# iterm2_shell_integration
source ~/.iterm2_shell_integration.zsh

export cluster=sugihara@133.5.143.27
export station=sugihara@133.5.143.100

# z command
autoload -Uz is-at-least

# Treat hook functions as array
typeset -ga chpwd_functions
typeset -ga precmd_functions
typeset -ga preexec_functions

# Simulate hook functions for older versions
if ! is-at-least 4.2.7; then
  function chpwd() { local f; for f in $chpwd_functions; do $f; done }
  function precmd() { local f; for f in $precmd_functions; do $f; done }
  function preexec() { local f; for f in $preexec_functions; do $f; done }
fi

function load-if-exists() { test -e "$1" && source "$1" }

# z - jump around {{{2
# https://github.com/rupa/z
_Z_CMD=z
_Z_DATA=$HOME/Downloads/z/.z
if is-at-least 4.3.9; then
  load-if-exists $ZDOTDIR/z/z.sh
else
  _Z_NO_PROMPT_COMMAND=1
  load-if-exists $ZDOTDIR/z/z.sh && {
    function precmd_z() {
      _z --add "$(pwd -P)"
    }
    precmd_functions+=precmd_z
  }
fi
test $? || unset _Z_CMD _Z_DATA _Z_NO_PROMPT_COMMAND
# }}}
