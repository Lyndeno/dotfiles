syntax on
set number
set noswapfile
set hlsearch
set ignorecase
set incsearch

" Auto-install plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	 \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug section
call plug#begin('~/.vim/plugged')

Plug 'kevinoid/vim-jsonc'

call plug#end()
