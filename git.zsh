fzf_git_checkout() {
    git checkout $(git branch --all | fzf --reverse | sed -e "s/remotes\/origin\///")
    zle reset-prompt
}
zle -N fzf_git_checkout

fzf_git_commit_fixup() {
    base_branch=$(git branch | fzf --reverse | sed 's/ //g')
    base_commit=$(git log --oneline ${base_branch}..HEAD | fzf --reverse | cut -d ' ' -f 1)
    git commit --fixup ${base_commit}
    zle reset-prompt
}
zle -N fzf_git_commit_fixup
