
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"

#################################################
## GFE PROXIES
#################################################
export http_proxy="http://preproxy.uscis.dhs.gov:80"
export https_proxy="http://preproxy.uscis.dhs.gov:80"
export no_proxy="uscis.dhs.gov,localhost,.localdomain,127.0.0.1"
export HTTP_PROXY="http://preproxy.uscis.dhs.gov:80"
export HTTPS_PROXY="http://preproxy.uscis.dhs.gov:80"
export NO_PROXY="uscis.dhs.gov,localhost,.localdomain,127.0.0.1"
export ALL_PROXY=https://el2-dt-preproxy.uscis.dhs.gov:80/
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home

export USCIS_HOME=~/Desktop/Workspace/Enrollments

# VIS Enrollment API Variables
export cluster_env=LOCAL
export JWT_SECRET_KEY=secret_key
export RAILS_URL=localhost:3000/

# added by travis gem
[ -f /Users/gespino/.travis/travis.sh ] && source /Users/gespino/.travis/travis.sh
