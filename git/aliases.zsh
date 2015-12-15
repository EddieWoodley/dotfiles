# status
alias gst='git status -sb'

# commit
alias gad='git add'
alias gaa='git add -A'
alias gcm='git commit'

# tagging
alias gtg='git tag'
alias gta='git tag -a'

# log
alias glg="git log --graph --pretty=format:'%C(auto)%h -%d %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gla="git log --graph --pretty=format:'%C(auto)%h -%d %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"

# reset
alias gre='git reset'
alias grh='git reset --hard'
alias gun='git reset --soft HEAD~1'

# merging
alias gmg='git merge --no-ff'
alias gmgff='git merge --ff-only'

# rebasing
alias grb='git rebase'
alias grbc='git rebase --continue'
alias grbs='git rebase --skip'
alias grba='git rebase --abort'

# branch management
alias gco='git checkout'
alias gcb='git checkout -b'
alias gbv='git branch -vv'
alias gbd='git branch -d'
alias gbD='git branch -D'

# stash
alias gsh='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsc='git stash clear'

# diff
alias gdi='git diff'
alias gds='git diff --staged'

# dealing with remotes
alias gpu='git push'
alias gpl='git pull --rebase'
alias gsm='git smart-pull' # requires git-smart gem

# bisect
alias gbi='git bisect start'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gbs='git bisect skip'
alias gbr='git bisect reset'

# cleanup
alias ggc='git gc'
alias gcr='git remote prune origin'
alias gcl="git branch -r | awk '{print \$1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print \$1}' | xargs git branch -D"

# tools
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}