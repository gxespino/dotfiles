export ZSH=/Users/gespino/.oh-my-zsh

ZSH_THEME=xxf

plugins=(git)

# User configuration
export PATH="/Users/gespino/.rbenv/shims:/usr/local/bin:/Users/gespino/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/gespino/.rbenv/shims:/Users/gespino/.bin"

source $ZSH/oh-my-zsh.sh

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export USCIS_HOME=/Users/gespino/Desktop/Workspace/Enrollments

set nobackup set noswapfile
set term=xterm-256color

SOURCE="${(%):-%N}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done

export PATH="$PATH:/usr/X11/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# added by travis gem
[ -f /Users/gespino/.travis/travis.sh ] && source /Users/gespino/.travis/travis.sh

#########################
## Bash
#########################
alias c='clear'
alias tmux='tmux -2'
alias vim='nvim'
alias vi='nvim'
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

##########################
## Docker
##########################
alias dl="docker ps -l -q"                     # Get latest container ID
alias dcb="docker-compose build"               # Build container
alias dcu="docker-compose up"                  # Up container
alias dcd="docker-compose down"                # Down container
alias dps="docker ps"                          # Get container process
alias dpa="docker ps -a"                       # Get process included stop container
alias di="docker images"                       # Get images
alias dke='docker exec -it `docker-compose ps -q web`'
dstop() {  docker stop $(docker ps -a -q); }   # Stop all containers
alias dremove='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)' # Stop and Remove all containers
dalias() { alias  | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; } # Show all alias related docker

##########################
## PROXIES
##########################
export http_proxy="http://preproxy.uscis.dhs.gov:80"
export https_proxy="http://preproxy.uscis.dhs.gov:80"
export no_proxy="uscis.dhs.gov,localhost,.localdomain,127.0.0.1"
export HTTP_PROXY="http://preproxy.uscis.dhs.gov:80"
export HTTPS_PROXY="http://preproxy.uscis.dhs.gov:80"
export NO_PROXY="uscis.dhs.gov,localhost,.localdomain,127.0.0.1"


eval "$(_TMUXP_COMPLETE=source tmuxp)"
