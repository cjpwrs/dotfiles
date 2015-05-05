ZSH=$HOME/.oh-my-zsh
ZSH_THEME="geoffgarside"
plugins=(elnicky)

export PSQL_APP="/Applications/Postgres.app/Contents/Versions/9.4/bin"
export PATH="/usr/local/bin:/usr/local/sbin:$PSQL_APP:$PATH"
export NDK_ROOT="$HOME/Code/android-ndk-r9c"
export ANDROIDPP_ROOT="$HOME/Code/Androidpp"

export DOCKER_HOST=tcp://127.0.0.1:2376
export DOCKER_CERT_PATH=/Users/telnicky/.dinghy/certs
export DOCKER_TLS_VERIFY=1

export VAGRANT_DEFAULT_PROVIDER=vmware_fusion

# Load RBenv
export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh

# no more auto correct
unsetopt correct_all

# stop searching my hosts
zstyle ':completion:*' hosts off

