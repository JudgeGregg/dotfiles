"Not compatible with vi
set nocompatible
"Use pathogen to easily modify the runtime path to include all
"plugins under the ~/.vim/bundle directory
call pathogen#infect()
call pathogen#helptags()
"Automatically detect filetype and set plugins
filetype plugin indent on
"Syntax color on
syntax on
"Change the mapleader from \ to space
"let mapleader="\<Space>"
let mapleader=","
"Use autoindent
set autoindent
"Hide buffers
set hidden
"Use wildmenu completion
set wildmenu
"Always show line numbers
set number        
"Set show matching parenthesis
set showmatch     
"Ignore case when searching
set ignorecase    
"Ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase     
"Insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab      
"Highlight search terms
set hlsearch      
"Show search matches as you type
set incsearch    
"Read shortkeys
execute 'source' . $HOME . '/.vim/shortkeys.vim'
"Auto complete based on context
let g:SuperTabDefaultCompletionType = "context"
"Auto complete options
set completeopt=menuone,longest,preview
"Enable mouse
set mouse=a
"Remember more commands and search history
set history=1000         
"Use many mort levels of undo
set undolevels=1000      
"Ignore file extensions
set wildignore=*.swp,*.pyc,*.svn,*.git
"Change the terminal's title
set title                
"Don't beep
set noerrorbells        
"Enable paste mode
set pastetoggle=<F12>
"Set dark background
set background=dark
"Set colorscheme
syntax enable
let g:solarized_termtrans=1
colorscheme solarized
"Postgresql DB connection parameters
let g:dbext_default_profile_PG='type=PGSQL:user=openerp:host=localhost'
