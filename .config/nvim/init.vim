" VIM PLUG
call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'preservim/tagbar'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'itchyny/lightline.vim'
Plug 'rking/ag.vim'
Plug 'kassio/neoterm'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'}
Plug 'Shougo/deoplete-lsp'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" VISUAL
set number
set listchars=tab:▸\ ,eol:¬
set termguicolors
colorscheme catppuccin-macchiato
let g:lightline = {'colorscheme': 'one'}
set noshowmode
set cursorline

" No swap file
set noswapfile

" Set transparent background
" hi! Normal ctermbg=NONE guibg=NONE

" Copy the previous indentation on autoindenting
set backspace=indent,eol,start

" Python Neovim
let g:python_host_prog = '/home/greg/.pyenv/versions/neovim2/bin/python2'
let g:python3_host_prog = '/home/greg/.pyenv/versions/neovim/bin/python'

" Deoplete
let g:deoplete#enable_at_startup = 1

" Neoterm
" Switch to new term in insert mode
let g:neoterm_autoinsert = 1
let g:neoterm_default_mod = 'botright'

" Switch to insert mode when entering terminal
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" SHORTKEYS
map <Space> <leader>
nnoremap <leader>ff <Esc>:FZF<CR>
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
tnoremap <C-w>h <C-\><C-N><C-w>h
tnoremap <C-w>j <C-\><C-N><C-w>j
tnoremap <C-w>k <C-\><C-N><C-w>k
tnoremap <C-w>l <C-\><C-N><C-w>l
tnoremap <C-w>w <C-\><C-N><C-w>w
tnoremap <C-w><C-h> <C-\><C-N><C-w>h
tnoremap <C-w><C-j> <C-\><C-N><C-w>j
tnoremap <C-w><C-k> <C-\><C-N><C-w>k
tnoremap <C-w><C-l> <C-\><C-N><C-w>l
tnoremap <C-w><C-w> <C-\><C-N><C-w>w
tnoremap <C-s> <C-\><C-N>
inoremap <C-w>h <C-\><C-N><C-w>h
inoremap <C-w>j <C-\><C-N><C-w>j
inoremap <C-w>k <C-\><C-N><C-w>k
inoremap <C-w>l <C-\><C-N><C-w>l
inoremap <C-w><C-h> <C-\><C-N><C-w>h
inoremap <C-w><C-j> <C-\><C-N><C-w>j
inoremap <C-w><C-k> <C-\><C-N><C-w>k
inoremap <C-w><C-l> <C-\><C-N><C-w>l
inoremap <C-w><C-w> <C-\><C-N><C-w>w

" LSP Config
lua << EOF
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

-- Use a loop to conveniently both setup defined servers
-- and map buffer local keybindings when the language server attaches
local lspconfig = require('lspconfig')
lspconfig.pylsp.setup {}
lspconfig.gopls.setup {
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
}
EOF

" Treesitter config
lua << EOF
require('nvim-treesitter.configs').setup {
  -- one of "all", "maintained" (parsers with maintainers),
  -- or a list of languages
  ensure_installed = { "python", "go", "comment" },
  highlight = { enable = true},
}
EOF
