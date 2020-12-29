export PATH="$(brew --prefix qt@5.5)/bin:$PATH"

# added by travis gem
[ -f /Users/gpespn/.travis/travis.sh ] && source /Users/gpespn/.travis/travis.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
