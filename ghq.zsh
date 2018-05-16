fzf_cd_ghq_list() {
    cd "$(ghq list --full-path | fzf --reverse)"
    zle reset-prompt
}
zle -N fzf_cd_ghq_list

