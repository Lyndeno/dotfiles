syntax on
set number
set noswapfile
set hlsearch
set ignorecase
set incsearch
set noshowmode
filetype plugin indent on

" Auto-install plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	 \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug section
call plug#begin('~/.vim/plugged')

Plug 'kevinoid/vim-jsonc'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
call plug#end()

" statusline configuration
set laststatus=2

set t_Co=256
set mouse=nicr

let g:lightline = {
	\ 'colorscheme': 'wombat',
      	\ 'active': {
      	\   'left': [ [ 'mode', 'paste' ],
      	\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      	\ },
      	\ 'component_function': {
      	\   'gitbranch': 'FugitiveHead'
      	\ },
      	\ }
