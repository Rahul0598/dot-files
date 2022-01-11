set number
set relativenumber "Show line number on the current line and relative numbers on all other lines
set showbreak=+++
set linebreak "avoid wrapping a line in the middle of a word
set textwidth=0 "avoid physical line wrap
set showmatch	
set wrap
"set visualbell
set mouse=a " full mouse activation

"=SEARCH OPTIONS=
set hlsearch	    
set smartcase	   
set ignorecase	  
set incsearch	 

"=INDENT OPTIONS=
set autoindent
set smarttab	
set tabstop=4
set shiftwidth=4
set expandtab

set ruler	    
set undolevels=1000
set backspace=indent,eol,start

set wildmenu
let mapleader = " " "Leader key = space
map <leader>f :Files<CR>
map <leader>n :NERDTreeToggle<CR> 
map <Leader>w :nohlsearch<CR>

"Filetype association
au BufReadPost *.conkyrc set syntax=lua

"=VISUAL OPITONS="
"set cursorline      "highlight current line
"set cursorcolumn    "highlight current column

fu! ToggleCurline ()
    if &cursorline && &cursorcolumn
        set nocursorline
        set nocursorcolumn
    else
        set cursorline
        set cursorcolumn
    endif
endfunction

map <leader>h :call ToggleCurline()<CR>


set fillchars+=vert:│ " nicer vertical separator
hi VertSplit cterm=NONE

"=Bookmarks"
let g:startify_bookmarks = [
    \ '~/bin',
    \ '~/.config',
    \ '~/Public']

"=PLUGINS MANAGEMENT=
" >> Lightline requirement
set laststatus=2
" let g:lightline = {'colorscheme': 'solarized',} " change theme

" >> VimWiki requirement
set nocompatible
filetype plugin on
syntax on

" >> Vim-Plug: specify a directory for plugins
"    Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

set encoding=utf8
set guifont=DroidSansMono\ Nerd\ Font\ 11

" >> Vim-Plug list
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'spf13/vim-autoclose'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" >> Initialize plugin system
call plug#end()

" >> Startify Custom header
let g:startify_custom_header = [     
	\ '                                       ',
	\ '    ░█▀▄░▄▀▀▄░▀█▀░█▀▀░░▀░░█░░█▀▀░█▀▀   ', 
	\ '    ░█░█░█░░█░░█░░█▀░░░█▀░█░░█▀▀░▀▀▄   ',
	\ '    ░▀▀░░░▀▀░░░▀░░▀░░░▀▀▀░▀▀░▀▀▀░▀▀▀   ',
	\ '     ---------- rphl 2020 ----------   ']
