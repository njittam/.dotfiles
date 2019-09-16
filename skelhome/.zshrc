export TERM="xterm-256color"

alias e="exa --group-directories-first --long --colour auto --all --header --modified --group --git"

source ~/.dfexternal/zsh/antigen.sh

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle apt
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle archlinux
antigen bundle tmux
antigen bundle tmuxinator
antigen bundle colored-man-pages
antigen bundle fancy-ctrl-z
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply


if [[ -z "$TMUX" ]] && [ "$SSH_CONNECTION" != "" ]; then
    tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
fi
