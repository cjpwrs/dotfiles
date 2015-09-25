c() { cd ~/Code/$1; }
_c() { _files -W ~/Code -/; }
compdef _c c

# autocorrect is more annoying than helpful
unsetopt correct_all

function upgrade_oh_my_zsh() {
  /usr/bin/env ZSH=$ZSH /bin/sh $ZSH/tools/upgrade.sh
}

function zsh_stats() {
  history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n20
}

function hgrep() {
  history | grep $@
}

# Synchronize all local branches, reporting if any failed
function reposync() {
  git status &> /dev/null
  if [ $? -eq 0 ]; then
    git diff-index --quiet HEAD --
    [ $? -ne 0 ] && echo "You have local changes that haven't been commited" && return
    git remote update origin --prune

    failedbranches=()
    startbranch=$(git branch  | grep '*' | sed -e 's/* //')
    for branch in $(git branch | sed -e 's|* ||g' -e 's|^[ ]*||')
    do
      git rev-parse origin/$branch &> /dev/null
      if [[ $? -eq 0 ]]
      then
        currev=$(git rev-parse $branch)
        syncrev=$(git rev-parse origin/$branch)
        if [[ $currev != $syncrev ]]
        then
          echo " > Synchronizing branch $branch"
          git checkout $branch
          git rebase origin/$branch
        fi
      else
        echo " ! Branch $branch doesn't have an origin"
        failedbranches+=$branch
      fi
    done
    [ "${#failedbranches}" -gt 0 ] && echo " ! Failed syncing branches" && echo " ! Delete: git branch -d $failedbranches"

    curbranch=$(git branch | grep '*' | sed -e 's/* //')
    [ $startbranch != $curbranch ] && git checkout $startbranch
    echo "Local branches are up-to-date"
  else
    echo "Not a git repository"
  fi
}

