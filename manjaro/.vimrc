"Init vundle packages
"==============================================================================
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'yggdroot/indentline'

call vundle#end()

filetype plugin indent on

syntax on

"Styling
"==============================================================================
hi VertSplit cterm=NONE ctermfg=White ctermbg=NONE

hi StatusLine cterm=NONE ctermfg=Red ctermbg=NONE
hi StatusLineNC cterm=NONE ctermfg=Gray ctermbg=NONE

hi CursorLine cterm=NONE ctermbg=NONE
hi CursorColumn cterm=NONE ctermbg=NONE
hi CursorLineNR cterm=NONE ctermbg=NONE

hi colorcolumn cterm=NONE ctermfg=Red ctermbg=NONE

"Vim matcher options
"==============================================================================
match colorcolumn /\%80v.\+/

"Vim settings general
"==============================================================================
set shortmess=I
set re=1
set expandtab
set tabstop=2
set shiftwidth=2
set number
set hlsearch
set nostartofline
set foldenable
set foldmethod=indent
set foldlevelstart=10
set foldnestmax=10
set laststatus=2
set nosmartindent
set cursorcolumn
set cursorline

"Vim formatting options
"==============================================================================
set colorcolumn=80
set ffs=unix
set fillchars+=vert:\ 
set encoding=utf-8
set fileencoding=utf-8
set listchars=tab:\ \ ,eol:¬
set list
set t_md=

"Vim key mappings
"==============================================================================
let mapleader=','

map <C-H> :split<CR>
map <C-V> :vsplit<CR>

map <C-P> :bprev<CR>
map <C-N> :bnext<CR>

map <SPACE> za

map <LEADER>e :NERDTreeToggle<CR>

"NERDTree settings
"==============================================================================
let g:NERDTreeShowHidden=0
let g:NERDTreeMinimalUI=1

"NERDCommenter settings
"==============================================================================
let g:NERDCommentEmptyLines=1
let g:NERDDefaultAlign='left'

"Indentline settings
"==============================================================================
let g:indentLine_enabled=1
let g:indentLine_char='|'
let g:indentLine_color_term=4
let g:indentLine_first_char='|'
let g:indentLine_showFirstIndentLevel=1
