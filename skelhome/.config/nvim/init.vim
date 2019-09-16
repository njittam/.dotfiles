set encoding=utf-8

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvime/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'scrooloose/nerdtree'
"Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim'} 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Shougo/neco-vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'dense-analysis/ale'
"Latex
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'

call plug#end()

set number relativenumber
colorscheme dracula
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

let g:airline_the='dracula'
let g:deplete#enable_at_startup = 1

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\	'*': ['remove_trailing_lines', 'trim_whitespace'],
\	'javascript': ['eslint'],
\}
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=['~/.config/nvim/UltiSnips']




source ~/.config/nvim/tex.vim

