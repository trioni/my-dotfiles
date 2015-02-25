" Makes search act like search in modern browsers
set incsearch

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch

" Show line numbers
set number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colorscheme desert
set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab
set smartindent
set tabstop=4
set shiftwidth=4

" Set the font-size to 16
set guifont=Menlo:h16

" Load plugins
" execute pathogen#infect()
