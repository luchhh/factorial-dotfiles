#!/bin/bash

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories

# Tree
if [ ! -x "$(which tree)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# GIT

# Aliases
alias ga='git add'
alias gap='git add -p'
alias gs='git status'
alias gl='git pull'
alias gpu='git push'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gg='git grep'
alias gd='git diff'
alias gst='git diff main --compact-summary'
alias gca='git commit --amend'
alias gh='git log --pretty=reference'

# Devenv
alias devenv='tmuxinator start -p gitpod/.tmuxinator.yml'

# Factorial
alias rails_reset='bundle exec rails db:drop db:create db:schema:load rails db:seed'
alias f_gg='bundle exec rails autodiscovery:generate_graphql_schema'

