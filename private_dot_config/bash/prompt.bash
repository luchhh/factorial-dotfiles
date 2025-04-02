# First define the git functions for ZSH
function git_dirty {
  git diff --quiet HEAD &>/dev/null
  [ $? == 1 ] && echo "!"
}

function git_prompt_info {
  local ref
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " (${ref#refs/heads/}$(git_dirty))"
}

# Then set the prompt with proper spacing
PS1='%F{green}%~%F{blue}$(git_prompt_info)%f $ '
