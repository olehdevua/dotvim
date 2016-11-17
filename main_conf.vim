" default text encoding
set encoding=utf-8

" General
colorscheme peachpuff
set background=light
set showcmd
set autoread        " For auto update files
set wrap
set smartcase
" set relativenumber
set number          " short form 'nu'
set linebreak		" Break lines at word (requires Wrap lines)
set dy=lastline		" break lines config too
set showbreak=  	" Wrap-broken line prefix
set textwidth=80	" Line wrap (number of cols)
" set columns=80          " short form 'co' : set width of vim in terminal
set showmatch		" Highlight matching brace  "short way is 'set sm'
set ignorecase		" Always case-insensitive
set wildmenu

set autoindent		" Auto-indent new lines
set smartindent		" Enable smart-indent
set smarttab		" Enable smart-tabs
set shiftwidth=4	" Number of auto-indent spaces
set softtabstop=4	" Number of spaces per Tab
set tabstop=4
set expandtab       " transformation tab into spaces

"set hls!
set nohlsearch
set incsearch
"set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkgrey

set ruler		    " Show row and column ruler information
set showtabline=2	" Show tab bar
set undolevels=512	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

set foldenable
set foldmethod=indent
set foldlevelstart=2

set mouse=c   " command-line mode (see :help mouse)
set t_Co=256
if has ("autocmd")
    filetype indent on
endif

" Performance
set synmaxcol=256
set lazyredraw " to avoid scrolling problems

" `nore` mean NOT RECURSION .. for cases like `:inoremap ff fff`

inoremap =++ =======
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap `` ``<Left>
inoremap <> <><Left>
inoremap /** /**<CR>*/<Left><Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap { {}<Left>

" session options
set sessionoptions=curdir,buffers,tabpages"
" Не выгружать буфер, когда переключаемся на другой. Это позволяет редактировать
" несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

set scrolloff=20
set scrolljump=13
" Фолдинг по отсупам
set foldmethod=manual
set foldlevel=3
" Show separate tokens
" set list
"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,nbsp:+


imap jf <Esc>l


imap ;r return
imap ;f function
imap ;in instanceof 
imap ;tp typeof 
imap ;tn throw new 
imap ;tnt throw new TypeError(
imap ;tne throw new Error(
imap ;q require
imap ;pr prototype
imap ;e export
imap ;en extends
imap ;ar arguments
imap ;as assert
imap ;ud undefined
imap ;cs console
imap ;co constructor
imap ;do document
imap ;de describe
imap ;df default
imap ;w window
imap ;E Error
imap ;A Array
imap ;OO Object
imap ;S String

imap ;t trait
imap ;s struct
imap ;u unsafe
imap ;I Iterator
imap ;O Option
imap ;R Result
imap ;mr macro_rules! 
imap ;pn println!(""

" change sp window   map <Tab> <C-W>W:cd %:p:h<CR>:<CR>

" set back up dir, for storyng swap files there
" set backupdir=~/.vim/backup//
" set directory=~/.vim/swap//
set noswapfile " disable creating swap files
set ic " Игнорировать регистр при поиске

" http://stackoverflow.com/questions/8841116/vim-not-recognizing-aliases-when-in-interactive-mode
" :set shellcmdflag=-ic
let $BASH_ENV = "~/.bash_profile"
" for key button working for during kirilic 
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

" for neovim
set shell=/bin/bash
let g:python_host_prog='/usr/bin/python2.7'
" for python plugins see :h nvim-python 