set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'vim-syntastic/syntastic'
Plugin 'gmarik/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'
Plugin 'Exafunction/codeium.vim'
Plugin 'nvie/vim-flake8'
Plugin 'jremmen/vim-ripgrep'
Plugin 'hashivim/vim-terraform'
" All of your Plugins must be added before the following line
call vundle#end()
filetype indent plugin on
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set ruler
let g:indentLine_char = '⦙'
let g:ackprg = 'ag --vimgrep'
:set backspace=indent,eol,start
let python_highlight_all=1
let g:go_fmt_command = "goimports"
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>
syntax on
"colorscheme desert
"colorscheme badwolf
colorscheme apprentice
"colorscheme sorcerer
set list
set listchars=tab:>-,trail:.
set foldmethod=indent
set foldlevel=99
let g:netrw_browse_split=3
nnoremap <space> za
set nu
autocmd StdinReadPre * let s:std_in=1
let g:netrw_banner=0
set hlsearch
