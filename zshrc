export ZSH=/Users/gpespn/.oh-my-zsh

ZSH_THEME=xxf

plugins=(git)

# User configuration
export PATH="$PATH:/usr/X11/bin:/usr/local/bin:/Users/gpespn/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/gpespn/.bin"

source $ZSH/oh-my-zsh.sh

set nobackup set noswapfile
set term=xterm-256color

alias c='clear'
alias tmux='tmux -2'
alias vim='nvim'
alias vi='nvim'
alias t='tree'
alias ngrok-sb="~/ngrok http 3000 -subdomain=sidebar"

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

alias zetup='./exe/zetup'

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

# added by travis gem
[ -f /Users/gpespn/.travis/travis.sh ] && source /Users/gpespn/.travis/travis.sh

export EDITOR="vim"
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Rails BS
export SECRET_KEY_BASE='8e139bf22e19edb4a7ffd7c3ef25cc7317982a7e9b40de785319a6e91e17376d76d98c4d325c3fdd727d684a9673e3f91f229c6b50261dc9935b5bdd98104ee8'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
