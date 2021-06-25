#!/bin/bash

# https://github.com/erwanjegouzo/dotfiles/blob/master/.bash_profile
export HISTCONTROL=ignoredups
export HISTSIZE=1000
export HISTFILESIZE=1000

# iTerm2 custom title on each tab
#export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'

# GO stuff
export GOROOT=/usr/local/go
export GOPATH=$HOME/go

# Other home dirs
export JAVA_HOME=$HOME/.jdks/current
export GRADLE_HOME=$HOME/tools/gradle/current
export KOTLIN_HOME=$HOME/tools/kotlin/current
export MAVEN_HOME=$HOME/tools/maven/current
export NODE_HOME=$HOME/tools/node/current
#export PG_HOME=$HOME/tools/postgres/current
#export PGDATA=$HOME/tools/postgres/current-data
#export DOCKER_UTILS=$HOME/tools/docker-utils

. ~/.bash_it/z.sh

export PATH="$GOPATH/bin:$GRADLE_HOME/bin:$JAVA_HOME/bin:$KOTLIN_HOME/bin:$MAVEN_HOME/bin:$NODE_HOME/bin:$PATH"

export RIPGREP_CONFIG_PATH=~/.ripgreprc

. ~/.bash_aliases

. ~/.bash_functions

# export NVM_DIR="$HOME/.nvm"
# if [[ -d $NVM_DIR ]]; then
#   [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#   [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# fi

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bakke'

# Your place for hosting Git repos. I use this for private repos.
#export GIT_HOSTING='git@git.domain.com'

# Set my editor and git editor
export EDITOR=nvim

# Set the path nginx
#export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
#export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli

export TODO="t"

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# This will by default exclude files in .gitignore from showing up in FZF
export FZF_DEFAULT_COMMAND="rg --files"

export PAGER=less
export LESS=-FRX


# Load Bash It
source $BASH_IT/bash_it.sh
