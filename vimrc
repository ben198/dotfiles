set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

colorscheme Monokai
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
