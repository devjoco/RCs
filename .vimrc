set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-repeat'
Plugin 'vim-scripts/vis'
Plugin 'Tabular'
Plugin 'alvan/vim-closetag'
Plugin 'pangloss/vim-javascript'
Plugin 'Valloric/YouCompleteMe'
Plugin 'othree/html5.vim'
Plugin 'stanangeloff/php.vim'
call vundle#end()

filetype plugin indent on "Remove 'indent' to ignore plugin indent changes

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2
set number relativenumber
set showcmd
set incsearch
set hlsearch
set scrolloff=1
colorscheme pablo

"        Remaps
vnoremap <      <gv
vnoremap >      >gv
nnoremap ;      :
nnoremap :      ;
noremap  <F12>  <Esc>:syntax sync fromstart<CR>

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter	 * set norelativenumber
augroup END

" ycm specific things
let g:ycm_autoclose_preview_window_after_completion=1

" Ctags stuff
set tags=./tags,tags;$HOME
