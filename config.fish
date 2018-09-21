# some ls settings
alias ls 'ls -GF'
alias la 'ls -A'
alias ll 'ls -lrth'
set -x LSCOLORS GxfxcxdxBxegedabagacad $LSCOLORS

# useful aliases
alias vf 'vi ~/.config/fish/config.fish'
alias srcf 'source ~/.config/fish/config.fish'
alias word 'open -a Microsoft\ Word'
alias excel 'open -a Microsoft\ Excel'
alias powerpoint 'open -a Microsoft\ PowerPoint'
alias firefox 'open -a Firefox.app'
alias loginshell 'dscl localhost -read Local/Default/Users/$USER UserShell'
# alias airport '/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport

# source ~/.config/fish/functions/user_key_bindings.fish

bass source /usr/local/root/bin/thisroot.sh

bass source /usr/local/geant4/bin/geant4.sh

source ~/.iterm2_shell_integration.fish
