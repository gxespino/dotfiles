
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export http_proxy="http://preproxy.uscis.dhs.gov:80"
export https_proxy="http://preproxy.uscis.dhs.gov:80"
export no_proxy="uscis.dhs.gov,localhost,.localdomain,127.0.0.1"
export HTTP_PROXY="http://preproxy.uscis.dhs.gov:80"
export HTTPS_PROXY="http://preproxy.uscis.dhs.gov:80"
export NO_PROXY="uscis.dhs.gov,localhost,.localdomain,127.0.0.1"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
