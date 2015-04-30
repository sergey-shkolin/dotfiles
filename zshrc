# exports
export ZSH=/Users/sergey/.oh-my-zsh
export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

ZSH_THEME="norm"
plugins=(git)

# aliases
alias docker='~/Tools/docker'
alias etcdctl='~/Tools/etcdctl'

alias vgs="vagrant global-status"
alias vs="vagrant status"
alias vu="vagrant up"

# git aliases
alias gpr='git pull --rebase'
alias gpu='git pull --rebase && git push'
alias gs="git status -sb"

alias fastping='ping -c 100 -s 2'
alias header='curl -I'
alias lock='open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'

# functions
function genpwd() { head /dev/urandom | uuencode -m - | sed -n 2p | cut -c1-${1:-12}; }
function add-ssh-key() { cat ~/.ssh/id_rsa.pub | ssh $1 'cat >> ~/.ssh/authorized_keys' }
function generate_mac() { openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//' }
function doc() { open dash://$1:$2 }

# sources
source $ZSH/oh-my-zsh.sh

# private sources
source ~/Dropbox/configs/.aliases.private
source ~/Dropbox/configs/.auth

