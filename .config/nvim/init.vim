" VIM PLUG
call plug#begin('~/.config/nvim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/ListToggle'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
Plug 'kassio/neoterm'
Plug 'pangloss/vim-javascript'
Plug 'mhartington/oceanic-next'
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'
Plug 'fatih/vim-go' { 'do': ':GoUpdateBinaries' }
Plug 'psf/black', { 'branch': 'stable' }
call plug#end()

" VISUAL
set number
set listchars=tab:▸\ ,eol:¬
set termguicolors
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
colorscheme nord
set noshowmode

" No swap file
noswap

"let g:terminal_color_0  = '#303030'
"let g:terminal_color_1  = '#d75f5f'
"let g:terminal_color_2  = '#00af87'
"let g:terminal_color_3  = '#afd75f'
"let g:terminal_color_4  = '#5fafd7'
"let g:terminal_color_5  = '#8787af'
"let g:terminal_color_6  = '#00afd7'
"let g:terminal_color_7  = '#ffffff'
"let g:terminal_color_8  = '#a3a3a3'
"let g:terminal_color_9  = '#d787af'
"let g:terminal_color_10 = '#5faf5f'
"let g:terminal_color_11 = '#d7af5f'
"let g:terminal_color_12 = '#87afd7'
"let g:terminal_color_13 = '#8787d7'
"let g:terminal_color_14 = '#87afff'
"let g:terminal_color_15 = '#ffffff'

" Set transparent background
hi! Normal ctermbg=NONE guibg=NONE

" Copy the previous indentation on autoindenting
set backspace=indent,eol,start

" Python Neovim
let g:python_host_prog = '/home/greg/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/greg/.pyenv/versions/neovim3/bin/python'

" Neomake
" When writing a buffer (no delay).
call neomake#configure#automake('w')

" Ctrl-P
let g:ctrlp_user_command ="ag %s -l -g ''"
let g:ctrlp_use_caching = 0

" Deoplete
let g:deoplete#enable_at_startup = 1

" Jedi-Vim
let g:jedi#completions_enabled = 0

" Neoterm
" Switch to new term in insert mode
let g:neoterm_autoinsert = 1
let g:neoterm_default_mod = 'botright'

" Switch to insert mode when entering terminal
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" LANGUAGE SPECIFICS
" NerdCommenter use // in C files
let g:NERDAltDelims_c = 1
" RISCV gcc
let g:neomake_c_riscvgcc_maker = {
    \ 'exe': 'riscv64-unknown-elf-gcc',
    \ 'args': ['-fsyntax-only', '-Wall', '-Wextra', '-Ifreedom-metal', '-Ibsp/sifive-hifive1-revb/install/include'],
    \ 'errorformat':
            \ '%-G%f:%s:,' .
            \ '%-G%f:%l: %#error: %#(Each undeclared identifier is reported only%.%#,' .
            \ '%-G%f:%l: %#error: %#for each function it appears%.%#,' .
            \ '%-GIn file included%.%#,' .
            \ '%-G %#from %f:%l\,,' .
            \ '%f:%l:%c: %trror: %m,' .
            \ '%f:%l:%c: %tarning: %m,' .
            \ '%I%f:%l:%c: note: %m,' .
            \ '%f:%l:%c: %m,' .
            \ '%f:%l: %trror: %m,' .
            \ '%f:%l: %tarning: %m,'.
            \ '%I%f:%l: note: %m,'.
            \ '%f:%l: %m',
	\ }
let g:neomake_c_enabled_makers=['riscvgcc']
" Merge stdout and stderr for neomake
set makeprg=make\ PROGRAM=%:t:r\ 2>&1

" SHORTKEYS
map <Space> <leader>
nnoremap <leader>a <Esc>:Ag<CR>
nnoremap <leader>T <Esc>:TagbarToggle<CR>
nnoremap <leader>L <Esc>:set list!<CR>
nnoremap <leader>gs <Esc>:Gstatus<CR>
nnoremap <leader>gr <Esc>:Gread<CR>
nnoremap <leader>gw <Esc>:Gwrite<CR>
nnoremap <leader>gd <Esc>:Gdiff<CR>
nnoremap <leader>gv <Esc>:Gvdiff<CR>
nnoremap <leader>gl <Esc>:Glog<CR>
nnoremap <leader>gg <Esc>:silent Git log --oneline --graph --decorate<CR>
nnoremap <leader>gc <Esc>:Gcommit<CR>
nnoremap <leader>tt <Esc>:Ttoggle<CR>
nnoremap <leader>tn <Esc>:Tnew<CR>
nnoremap <M-l> gt
nnoremap <M-h> gT
tnoremap <M-l> <C-\><C-N>gt
tnoremap <M-h> <C-\><C-N>gT
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <C-s> <C-\><C-N>
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
