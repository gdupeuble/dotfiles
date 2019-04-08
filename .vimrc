" Basic settings {{{
" Use Vim settings, rather than Vi settings.
set nocompatible

colorscheme desert

set history=50 "command line history
set ruler      "show cursor position all the time
set showcmd    "display incomplete commands
set incsearch  "do inc searching
set hlsearch

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
set expandtab " on pressing tab, insert 4 spaces
set shiftwidth=4
set softtabstop=4
set smartindent

set diffopt=vertical

" put all files in a backup
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" navigation
nnoremap <silent> <C-L> :wincmd l<CR>
nnoremap <silent> <C-K> :wincmd k<CR>
nnoremap <silent> <C-J> :wincmd j<CR>
nnoremap <silent> <C-H> :wincmd h<CR>
" }}}

" Edit MYVIMRC {{{
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}

" Vimscript file settings {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" FileType comments {{{
augroup comments
autocmd!
  autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
  autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
  autocmd FileType c          nnoremap <buffer> <localleader>c I//<esc>
augroup END
" }}}

" Abbreviations {{{
iabbrev @@ gaetan.dupeuble@clearsy.com
" }}}

" Pathogen {{{
execute pathogen#infect()
call pathogen#helptags()
" }}}

" NerdTree {{{
" NerdTree toggle on F10
noremap <F10> :NERDTreeToggle<CR>
" }}}

" Useful Remap {{{
    " remove all trailing whitespace in file
noremap <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :nohl <Bar> :unlet _s <CR>
" }}}

" Git rebase remap {{{
    " replace a word by 'f', meaning fixup
nnoremap <leader>f cwf<Esc>
" }}}
