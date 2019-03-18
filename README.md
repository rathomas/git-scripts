#git-scripts

A set of Git scripts for accelerating common tasks.  

#Sample .bash_profile:
```sh
# Include .bashrc
source ~/.bashrc
```

#Sample .bashrc:
```sh
# Add Aliases
alias gs='git_branch.sh -i'
alias gc='git_checkout.sh -i'
alias gcn='git_checkout.sh -n'
alias gp='git_push.sh -b $(git_current.sh)'
alias gf='git_fix.sh -b $(git_current.sh)'
alias gfc='git_fix_commit.sh -b $(git_current.sh)'
alias gx='git_remove.sh -i'
alias gr='git_reset_to_head.sh -b $(git_current.sh)'

# PATH
export PATH=$PATH:~/scripts
```