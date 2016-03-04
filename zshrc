# exports
export ZSH=/Users/sergey/.oh-my-zsh
export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

ZSH_THEME="norm"
plugins=(git sublime vagrant)

# aliases
alias reload!='. ~/.zshrc'

alias docker='~/Tools/docker'
alias etcdctl='~/Tools/etcdctl'
alias vgs="vagrant global-status"
alias vs="vagrant status"
alias vu="vagrant up"
alias fastping='ping -c 100 -s 2'
alias header='curl -I'
alias lock='open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'
alias flushdns='dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

# git aliases
alias gpr='git pull --rebase'
alias gpu='git pull --rebase && git push'
alias gs="git status -sb"
alias gd='git diff'
alias gb='git branch'
alias clean-local-branches='git branch --merged | grep -v "master" | xargs git branch -d'

# misc
alias ic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'

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
