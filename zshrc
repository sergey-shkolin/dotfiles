# exports
export ZSH=/Users/sergey/.oh-my-zsh
export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export PATH="/Users/sergey/Bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export VAGRANT_DEFAULT_PROVIDER=parallels

ZSH_THEME="norm"
plugins=(git sublime vagrant)

# aliases
alias reload!='. ~/.zshrc'
alias h='history'
alias vgs="vagrant global-status"
alias vs="vagrant status"
alias vu="vagrant up"
alias fastping='ping -c 100 -s 2'
alias header='curl -I'
alias lock='open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'
alias flushdns='dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
alias ic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'
alias salt-ssh='salt-ssh -c ${PWD}/etc/salt'

# git aliases
alias gpr='git pull --rebase'
alias gpu='git pull --rebase && git push'
alias gs="git status -sb"
alias gd='git diff'
alias gb='git branch'
alias clean-local-branches='git branch --merged | grep -v "master" | xargs git branch -d'
alias cmg='git commit -a -m "$(curl -s https://whatthecommit.com/index.txt)"'
alias yolo='git commit -a -m "$(curl -s https://whatthecommit.com/index.txt)"; git push -f'

# functions
function genpwd() { head /dev/urandom | uuencode -m - | sed -n 2p | cut -c1-${1:-12}; }
function add-ssh-key() { cat ~/.ssh/id_rsa.pub | ssh $1 'cat >> ~/.ssh/authorized_keys' }
function generate-mac() { openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//' }
function doc() { open dash://$1:$2 }
function cg() { grep  -v ^# $1 | grep -v ^$ }
function fnd() { find . -name "*$**" }
function grp() { grep -Ir "$(echo $*)" . }

# sources
source $ZSH/oh-my-zsh.sh

# private sources
source ~/iCloud/Configs/aliases.txt
source ~/iCloud/Configs/aws-hints.txt


# added by travis gem
[ -f /Users/sergey/.travis/travis.sh ] && source /Users/sergey/.travis/travis.sh
