# most frequently used :-)

# bat, a cat clone with wings: https://github.com/sharkdp/bat
alias cat="bat"

alias dk="docker"
alias dm="docker-machine"
alias dco="docker-compose"
alias dps="docker ps --format 'table {{.Names}}\t{{.Ports}}\t{{.RunningFor}}'"
alias dmenv='eval "$(docker-machine env default)"'
alias gdc='git diff --cached'
alias gst='git status'
alias actv='source venv/bin/activate'


# git and other aliases
alias be='bundle exec'
alias ber='bundle exec rake'
alias gbr='git branch'
alias gco='git checkout'

# see: http://coderwall.com/p/euwpig
alias ggraph="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias f='open -a Finder ./'

# From Matt
alias drink='brew update && brew upgrade && brew cleanup -s -force && brew doctor'

# http://lauri.lehmijoki.net/en/nerd/cli-tips.html
alias du-sum="du -skc * | sort -n"

alias listening="sudo lsof -i -P | grep LISTEN"

