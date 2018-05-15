fzf_git_checkout() {
    git checkout $(git branch --all | fzf-tmux --reverse | sed -e "s/remotes\/origin\///")
}

