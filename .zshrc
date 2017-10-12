# Path to your oh-my-zsh installation.
export ZSH=/Users/gpespn/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=xxf

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/Users/gpespn/.rbenv/shims:/usr/local/bin:/Users/gpespn/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/gpespn/.rbenv/shims:/Users/gpespn/.bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

set nobackup set noswapfile
set term=xterm-256color

alias c='clear'
alias tmux='tmux -2'
alias vim='nvim'
alias vi='nvim'
# alias v='TERM=xterm-256color nvim -v'
alias t='tree'
alias work='teamocil --here work'

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

export PATH="$PATH:/usr/X11/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# added by travis gem
[ -f /Users/gpespn/.travis/travis.sh ] && source /Users/gpespn/.travis/travis.sh
