echo ">>> .bash_profile"
# if [ -r ~/.bashrc ]; then . ~/.bashrc; fi
case "$-" in *i*) if [ -r ~/.bashrc ]; then . ~/.bashrc; fi;; esac

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
         eval "$(pyenv init -)"
 fi
 eval "$(pyenv virtualenv-init -)"

export PATH="$HOME/.poetry/bin:$PATH"
