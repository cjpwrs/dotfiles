# My Custom Aliases

# general aliases
alias cd..="cd .."
alias l="ls -al"
alias lp="ls -p"
alias o="open ."
alias ls='ls -G'

# the "kp" alias ("que pasa"), in honor of tony p.
alias kp="ps auxwww"

# bundler aliases
alias b="bundle"
alias bi="b install --path vendor"
alias bo="EDITOR=vim b open"
alias bu="b update"
alias bx="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

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
alias specs='bx rake spec RAILS_ENV=test'
alias retest='RAILS_ENV=test'
alias brake='bin/rake'
alias bspec='bin/rspec'

# Protobuf
alias railz='PB_CLIENT_TYPEZmq PB_IGNORE_DEPRECATIONS=1 bx rails s'
alias stfu='PB_IGNORE_DEPRECATIONS=1'
alias pz='PB_CLIENT_TYPE=Zmq'

# Supervisord
alias supd="supervisord"
alias supc="supervisorctl"

# misc
alias path='echo $PATH'
alias reload='source ~/.zshrc'
alias wifi='networksetup -setairportpower airport off; networksetup -setairportpower airport on'
