fzf_history() {
    local cmd="$(history -1 -500 | fzf --reverse | cut -c 8-)"
    echo $cmd
    eval $cmd
    zle reset-prompt
}
zle -N fzf_history

