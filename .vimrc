set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'vim-syntastic/syntastic'
Plugin 'gmarik/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
Plugin 'fatih/vim-go'
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
"colorscheme apprentice
colorscheme sorcerer
set list
set listchars=tab:>-,trail:.
set foldmethod=indent
set foldlevel=99
let g:netrw_browse_split=3
nnoremap <space> za
set nu
autocmd StdinReadPre * let s:std_in=1
let g:netrw_banner=0
"let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+,\(^\|\s\s\)ntuser\.\S\+'
"autocmd FileType netrw set nolist
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif
