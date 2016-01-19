# My Custom Aliases

# general aliases
alias cd..="cd .."
alias l="ls -al"
alias ls='ls -G'

# bundler aliases
alias b="bundle"
alias bo="EDITOR=vim b open"
alias bx="b exec"

# git aliases
alias g="git"
alias ga="git add"
alias gca="git commit --amend"
alias gcm="git commit -m"
alias gco="git checkout"
alias gcv="git commit -v"
alias gd="git diff --color"
alias gp="git pull"
alias gpsh="git push"
alias gpsh="git push origin HEAD:refs/for/master"
alias gs="g status"
alias gb="g branch"
alias pop="g stash pop"
alias stash="g stash"

# rails aliases
alias specs='bx rake spec'
alias brake='bin/rake'
alias bspec='bin/rspec'

# docker
alias doco='docker-compose'
