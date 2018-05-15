fzf_cd_ghq_list() {
    cd "$(ghq list --full-path | fzf-tmux --reverse)"
}
zle -N fzf_cd_ghq_list

