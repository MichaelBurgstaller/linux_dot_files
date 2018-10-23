"Vim styling
"================================================================
highlight VertSplit cterm=NONE ctermfg=Black ctermbg=Black
highlight StatusLine cterm=NONE ctermfg=Black ctermbg=Black
highlight StatusLineNC cterm=NONE ctermfg=Black ctermbg=Black

highlight CursorLine cterm=NONE ctermbg=Black
highlight CursorColumn cterm=NONE ctermbg=Black
highlight CursorLineNR cterm=NONE ctermbg=Black

highlight Pmenu cterm=NONE ctermfg=White ctermbg=238

"Vim settings
"================================================================
set re=1
set fillchars+=vert:\ 
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

set ffs=unix
set encoding=utf-8
set fileencoding=utf-8
set listchars=tab:\ \ ,eol:¬,nbsp:_
set list

set t_md=

nnoremap <F5> :NERDTreeToggle<CR>

syntax on
filetype plugin indent on

autocmd InsertEnter * :set relativenumber
autocmd InsertLeave * :set norelativenumber

let mapleader=","

"Pathogen initialization
"================================================================
execute pathogen#infect()

"NERDTree settings
"================================================================
"autocmd vimenter * NERDTree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1

"NERDCommenter settings
"================================================================
let g:NERDCommentEmptyLines = 1
let g:NERDDefaultAlign = 'left'

"Indentline settings
"================================================================
let g:indentLine_enabled = 1
let g:indentLine_char = '│'
let g:indentLine_color_term = 7
let g:indentLine_first_char = '│'
let g:indentLine_showFirstIndentLevel = 1

"Syntastic settings
"================================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
