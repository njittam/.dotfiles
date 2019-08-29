set encoding=utf-8

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim'} 
Plug 'dracula/vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'ycm-core/YouCompleteMe', {'do': 'python3 install.py --all'}
Plug 'tmux-plugins/vim-tmux'
call plug#end()

set number relativenumber
colorscheme dracula
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
