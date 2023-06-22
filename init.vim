 call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes"

" autocompletes
Plug 'p00f/clangd_extensions.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users. (snippets)
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" lsp
Plug 'neovim/nvim-lspconfig' 

" themes
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'phha/zenburn.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'morhetz/gruvbox'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" git
Plug 'tpope/vim-fugitive'

" misc fun stuff
Plug 'eandrju/cellular-automaton.nvim'

" Status line
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

" tree explorer
Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

colorscheme gruvbox

lua require("lsp_config")
lua require("treesitter")
lua require("lualine_setup")
lua require("nvimtree_setup")
lua require("telescope_setup")

" line number highlight
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

" NvimTree float bg has the same color, similar to default telescope
highlight NvimTreeNormalFloat guibg=NONE guifg=NONE

" autocmd BufWritePre *.go lua vim.lsp.buf.format()
" autocmd BufWritePre *.go lua goimports(1000)

" line number
set nu
set rnu
set completeopt=menu,menuone,noselect

" general indent
set tabstop=2
set shiftwidth=2
set expandtab
set cindent

" disable mouse
set mouse=

tnoremap <esc> <C-\><C-N>

" press esc disables highlight on /
noremap <silent> <esc> :noh<cr><esc>
