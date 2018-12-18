" Basic settings {{{
" Use Vim settings, rather than Vi settings.
set nocompatible

set history=50 "command line history
set ruler      "show cursor position all the time
set showcmd    "display incomplete commands
set incsearch  "do inc searching
set hlsearch
if has('mouse')
  set mouse=a
endif

" Leader key
let mapleader = "ù"
let maplocalleader = ","

" Learn VIM
inoremap jk <esc>
inoremap <esc> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Convert current word in uppercase
inoremap <c-u> <esc>viwUi
nnoremap <c-u> viwU<esc>

" Surround word in quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" Travel to the beginning or the end of lines
nnoremap H ^
nnoremap L $

" Indentation
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent
" }}}

" Edit MYVIMRC {{{
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}

" Abbreviations {{{
iabbrev @@ gaetan.dupeuble@clearsy.com
" }}}

" Abbreviations {{{

" }}}

" FileType comments {{{
augroup comments
autocmd!
  autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
  autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
  autocmd FileType c          nnoremap <buffer> <localleader>c I//<esc>
augroup END
" }}}

" Vimscript file settings {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
