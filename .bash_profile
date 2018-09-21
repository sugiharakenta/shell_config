# if [ -f ~/.bashrc ];then
# . ~/.bashrc
# fi

export PATH="/Users/sugiharakenta/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
PYTHON_CONFIGURE_OPTS="--enable-framework"

export PATH="/Users/sugiharakenta/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="/Users/sugiharakenta/phits/bin:/Users/sugiharakenta/phits/dchain-sp/bin:$PATH"

export PATH="$HOME/.nodebrew/current/bin:$PATH"

export PATH=/Users/sugiharakenta/phits/bin:/Users/sugiharakenta/phits/dchain-sp/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
