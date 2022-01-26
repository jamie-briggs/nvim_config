" set leader key
let g:mapleader = "\<Space>"

" Do not highlight the matching parenthesis, it appears like the cursor!
let g:loaded_matchparen=1

set hidden                  " Required to keep multiple buffers open
set laststatus=0            " Always display the status line

set nocompatible            " disable compatibility to old-time vi
set encoding=utf-8          " character encoding 
set fileencoding=utf-8          " character encoding 

" SEARCHING
set noincsearch
set hlsearch
set ignorecase              " case insensitive matching
set smartcase               " turns off ignorecase if caps are used in term

set showmatch               " show matching brackets.
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
"set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
"set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard+=unnamedplus  " use system clipboard
set cursorline              " show active line with underline or hilite

set ttyfast                 " speedy terminal action
set ttimeoutlen=0

set noswapfile    

set title                   " show the name of open file in title

" User Interface
set background=dark
colorscheme default
set t_Co=256                " 256 color support
set pumheight=10            " Make the popup menu smaller
set ruler                   " Show the cursor position all the time
set formatoptions-=cro      " Stop newline continuation of comments

filetype plugin on     " syntax support
syntax on

" In text files, always limit the width of text to 118 characters
autocmd BufRead *.txt set tw=118
" When editing a file, always jump to the last cursor position
autocmd BufReadPost * if line("'\"") | exe "'\"" | endif

set tabstop=2               " number of columns occupied by a tab character
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set showtabline=2           " always show tabs

set smartindent             " Make indenting smart
set autoindent              " indent a new line the same amount as the line just typed

set nowrap                  " do not wrap long lines
set iskeyword+=-            " treat dash separated words as a single world
set splitbelow              " Horizontal splits to below
set splitright              " Vertical splits to right
set conceallevel=0          " Allow `` to be sean in markdown files

" Recommended by coc
set nobackup
set nowritebackup

set updatetime=300          " Faster completion
set timeoutlen=500          " By default this is 1000 ms

" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

au! BufWritePost $MYVIMRC source %      " autosource init.vim when it is written

" You can't stop me
cmap w!! w !sudo tee %

" load plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.config/nvim/plugins.vim

