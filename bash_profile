export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

source /Users/elnicky/code/dotfiles/bash_config.sh

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-2.3.0

source /Users/elnicky/code/dotfiles/git-prompt.sh
export PS1='\W $(__git_ps1 "%s ")λ '
export PROMPT_COMMAND='history -a'

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

source ~/.bashrc
