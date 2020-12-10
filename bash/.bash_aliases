echo ">>> .bash_aliases"
# source file
alias sb="source ~/.bashrc;"
alias sa="source ~/.bash_aliases"
alias sp="source ~/.bash_profile"

alias eb="vi ~/.bashrc"
alias ea="vi ~/.bash_aliases"
alias ep="vi ~/.bash_profile"

# Python
alias pv="python -V"
alias pls="pip list"
plg () { pip list | grep "$1" ;}
alias pda="pyenv deactivate"
pa () { pyenv activate "$1" ;}

# systemctl
alias svc-cd="cd /etc/systemd/system"
alias svc-reload="sudo systemctl daemon-reload"
svcr () { sudo systemctl restart "$1" ; sudo systemctl status "$1"  ;}
svcs () { sudo systemctl status  "$1" ;}
svcstop () { sudo systemctl stop "$1" ;}
svce () { sudo vi /etc/systemd/system/"$1".service ;}

# nginx
alias nx-cd="cd /etc/nginx"

# simpleapi
alias simple-g="gunicorn --bind 0.0.0.0:8000  app.main:app"
