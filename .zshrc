ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(git rails ruby bash perl php)

source $ZSH/oh-my-zsh.sh
source ~/.aliases

alias fastping='ping -c 100 -s 2'
alias header='curl -I'

function genpwd() { head /dev/urandom | uuencode -m - | sed -n 2p | cut -c1-${1:-12}; }

export PATH=$PATH:/Users/serjio/.rvm/gems/ruby-1.9.3-p362/bin:/Users/serjio/.rvm/gems/ruby-1.9.3-p362@global/bin:/Users/serjio/.rvm/rubies/ruby-1.9.3-p362/bin:/Users/serjio/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
