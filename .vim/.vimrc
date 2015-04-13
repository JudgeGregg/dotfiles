"Use pathogen to easily modify the runtime path to include all
"plugins under the ~/.vim/bundle directory
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()
"Automatically detect filetype and set plugins
filetype plugin indent on
"Syntax color on
syntax on
"Change the mapleader from \ to ,
let mapleader=","
"Use autoindent
set autoindent
"Hide buffers
set hidden
"Use wildmenu completion
set wildmenu
"Use wildmode completion
set wildmode=full
"Always show relative line numbers
set relativenumber
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
"Read shortkeys
execute 'source' . $HOME . '/.vim/shortkeys.vim'
"Auto complete based on context
let g:SuperTabDefaultCompletionType = "context"
"Set dark background
set background=dark
"Change default list symbols
set listchars=tab:▸\ ,eol:¬
"Set colorscheme
colorscheme Tomorrow-Night-Eighties
"Always show status line
set laststatus=2
"Remove mode display
set noshowmode
"Python powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
let ackprg = 'ack-grep -H --nocolor --nogroup --column'""
"Ultisnips directory
let UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips/'
