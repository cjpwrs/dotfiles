export PROJECT_PATH=~/code
export PODIUM_PATH=~/podium

source ~/code/dotfiles/bash_functions.sh
source ~/code/dotfiles/bash_aliases.sh

source ~/code/dotfiles/completion/git-completion.sh
source ~/code/dotfiles/completion/git-completion.sh

complete -C ~/code/dotfiles/completion/project-completion -o default c
complete -C ~/code/dotfiles/completion/podium-completion -o default p
