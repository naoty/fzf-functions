fzf_history() {
    local cmd="$(history -E 1 | fzf --reverse | cut -c 25-)"
    echo $cmd
    eval $cmd
    zle reset-prompt
}
zle -N fzf_history

