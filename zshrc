export ZSH=.oh-my-zsh

ZSH_THEME=xxf

plugins=(git)

# User configuration
# export PATH='/home/glenn'

source $ZSH/oh-my-zsh.sh

set nobackup set noswapfile
set term=xterm-256color

alias c='clear'
alias tmux='tmux -2'
alias vim='vim'
alias vi='vim'
alias t='tree'

#########################
## Rails
##########################
alias rs="TRUSTED_IP=192.168.33.1 rails s"
alias rt='rake test'
alias rubocop="rubocop -Dc .rubocop.yml"
alias rubocop-a="rubocop -Dc .rubocop.yml -a"
alias fresh='rake db:drop db:create db:migrate db:seed'
alias fresht='rake db:drop db:create db:migrate RAILS_ENV=test'
alias rs='TRUSTED_IP=192.168.33.1 rails s -b 0.0.0.0'
alias rc='rubocop -Dc .rubocop.yml'

##########################
## CD BACKSLASH SHORTHAND
##########################
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

##########################
## GIT
##########################
alias gp="git pull origin master"
alias prune="prune-l && prune-r"
alias prune-l="git branch --merged master | grep -v master | xargs -n 1 git branch -d"
alias prune-r="git branch --merged master | grep -v master | cut -d/ -f2- | xargs -n 1 git push --delete origin"

SOURCE="${(%):-%N}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
