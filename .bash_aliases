## Common
alias please="sudo"
alias c="code"
alias ls="ls --color=auto"
alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

## Git Aliases
alias gst="git status -sb"
alias glg='git log --stat'
alias glgp="git log --stat -p"
alias glgo="git log --oneline --decorate"
alias gl="git log --pretty=format:'%C(yellow)%h %C(green)%>(16)%ar %C(blue)%>(16)%an%C(green)%d %Creset%s'"

## Config aliases
alias config='/usr/bin/git --git-dir=/home/schmic/.dotfiles/ --work-tree=/home/schmic'
alias cst="config status -sb"
alias clg='config log --stat'

## Docker
alias dgc='docker container rm $(docker ps -q -f status=exited)'
alias dgci='docker image rm $(docker image ls -f "dangling=true" -q)'
alias dsts='docker container stats $(docker container inspect -f {{.Name}} $(docker ps -q) | cut -c 2-)'

## Docker Compose
alias dc="docker-compose"
alias dclf="docker-compose logs -f --tail 10"

## Docker Machine
alias dm="docker-machine"
