fzf_docker_id() {
  local id=$(docker ps -a --format "{{.ID}}\t{{.Image}}" | fzf --reverse | cut -f 1)
  echo ${id}
  echo -n ${id} | pbcopy
  zle reset-prompt
}
zle -N fzf_docker_id
