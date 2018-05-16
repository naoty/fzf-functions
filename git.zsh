fzf_git_checkout() {
    git checkout $(git branch --all | fzf --reverse | sed -e "s/remotes\/origin\///")
    zle reset-prompt
}
zle -N fzf_git_checkout

