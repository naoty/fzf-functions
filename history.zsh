fzf_history() {
    local cmd="$(history | fzf --reverse | cut -c 8-)"
    echo $cmd
    eval $cmd
    zle reset-prompt
}
zle -N fzf_history

