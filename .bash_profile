PS1="\[\e[38;5;207m\]\t \[\e[38;5;81m\]| \[\e[38;5;207m\]\W \[\e[38;5;81m\]| \[\
\e[38;5;207m\]\u \[\e[38;5;81m\]$ \[\e[0m\]"

alias ls='ls -GFh'
alias ll="ls -l"
alias lt='ls -t'
alias la='ls -a'
alias llt='ls -lt'
alias h='history'
alias g='grep'
alias d-restart='docker-compose down | docker-compose up --force-recreate --build'
alias dcd='docker-compose down'
alias dcur='docker-compose up --force-recreate --build'
dct() {
  docker-compose exec "$1" python -m pytest api --cov --cov-report=term-missing --cov-branch
}
alias dsp='docker system prune'

cdd() { cd ~/Desktop/"$1"; }

export CLICOLOR=1
export LSCOLORS=CxFxExDxBxegedabagaced

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
