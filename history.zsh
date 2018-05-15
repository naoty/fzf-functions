fzf_history() {
    local cmd="$(history | fzf-tmux --reverse | cut -c 8-)"
    echo $cmd
    eval $cmd
}
zle -N fzf_history

