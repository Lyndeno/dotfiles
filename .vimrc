syntax on
set number
set noswapfile
set hlsearch
set ignorecase
set incsearch
set noshowmode
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set tabstop=4

set updatetime=300
set shortmess+=c

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
"Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'ap/vim-css-color'
Plug 'neoclide/coc.nvim'
Plug 'tmsvg/pear-tree'
Plug 'cespare/vim-toml'
Plug 'luochen1990/rainbow'
Plug 'nanotech/jellybeans.vim'
Plug 'jackguo380/vim-lsp-cxx-highlight'
call plug#end()

" Manage coc extensions here:
let g:coc_global_extensions = ['coc-cmake', 'coc-json']

" Turn on bracket pair colours
let g:rainbow_active = 1
" Rainbow plugin has bugs with cmake, turn it off for cmake
let g:rainbow_conf = {
\   'separately': {
\       'cmake': 0,
\    }
\}

" theme
set t_Co=256
colorscheme jellybeans
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi CursorLineNr guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE

set signcolumn=number

inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <silent><expr> <c-@> coc#refresh()

" statusline configuration
set laststatus=2

" misc config
set number
set relativenumber

set t_Co=256
set mouse=nicr

" Custom Syntax Highlighting
au BufNewFile,BufRead Jenkinsfile set re=0 " Not setting this shows an error for some reason
au BufNewFile,BufRead Jenkinsfile set syntax=groovy " Jenkinsfile is groovy

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
