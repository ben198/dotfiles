if (has("termguicolors"))
    set termguicolors
endif
" Enable syntax highlighting
syntax on
colorscheme onedark

" Show relative line numbers
set relativenumber
" Show absolute line number for current line
set number
" Add line to indicate 80 columns point
if exists('+colorcolumn')
    set colorcolumn=80
endif
" Automatically type closing paren/bracket/quote
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
" Exit parens/brackets/quotes while in Insert mode
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
" Indent size
set expandtab
set shiftwidth=2

