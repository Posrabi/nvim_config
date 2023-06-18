 call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes"
Plug 'p00f/clangd_extensions.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'neovim/nvim-lspconfig' 

Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'phha/zenburn.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" or                                , { 'branch': '0.1.x' }

Plug 'tpope/vim-fugitive'

Plug 'eandrju/cellular-automaton.nvim'

" Status line
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

Plug 'nvim-tree/nvim-tree.lua'

Plug 'rebelot/kanagawa.nvim'
Plug 'morhetz/gruvbox'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

colorscheme gruvbox

lua require("lsp_config")
lua require("treesitter")
lua require("lualine_setup")
lua require("nvimtree_setup")

highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

highlight NvimTreeNormalFloat guibg=NONE guifg=NONE

" autocmd BufWritePre *.go lua vim.lsp.buf.format()
" autocmd BufWritePre *.go lua goimports(1000)

set nu
set rnu
set completeopt=menu,menuone,noselect

set tabstop=2
set shiftwidth=2
set expandtab
set cindent

set mouse=

tnoremap <esc> <C-\><C-N>
noremap <silent> <esc> :noh<cr><esc>
