set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'sickill/vim-monokai'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

" Change the mapleader from \ to ,
let mapleader=","
" Edit / reload vimrc (the one in ~/dotfiles, not the .vimrc symlink)
nmap <silent> <leader>ev :e ~/dotfiles/vimrc
nmap <silent> <leader>sv :so ~/dotfiles/vimrc
" Allow easy toggling between buffers
nmap <leader>n :bnext<CR>
nmap <leader>p :bprevious<CR>
" Enable syntax highlighting and set colour scheme
syntax enable
colorscheme monokai
" Show line numbers in the margin
set number
" Automatically type closing paren/bracket/quote
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
" Exit parens/brackets/quotes while in Insert mode
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
" Ensure CtrlP plugin uses pwd as the root folder to search
noremap <C-a> :CtrlP :pwd<CR>
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬""
" Pressing the tab key inserts 4 spaces
set ts=8 sts=4 sw=4 expandtab
" Add line to indicate 80 columns point
if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
" Allow Vim to create hidden buffers without raising an error first
set hidden
" Set the Explore mode list style
let g:netrw_liststyle=3
" Set keyboard shortcut to enter Explore mode
nmap <silent> <Leader>e :Explore<CR>
"
set nobackup
set noswapfile
