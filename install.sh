#!/bin/zsh

mkdir -p ~/.dfexternal/zsh

chsh -s $(which zsh)
cd ~/.dotfiles

#antigen
curl -L git.io/antigen > ~/.dfexternal/zsh/antigen.sh


#Vim
#plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#nVim
#plugged
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#tmuxinator
gem install tmuxinator

python3 install.py

vim +PlugInstall +qall
nvim +PlugInstall +qall

# Code
~/.dotfiles/install_code.sh


#Manjaro
lsb_release -i
~/.dotfiles/install_manjaro_programs.sh 