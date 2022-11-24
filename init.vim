:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set smarttab
:set mouse=a

call plug#begin()

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'} " Better than NERDTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes' " Themes for Status Bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'williamboman/mason.nvim' " Mason and stuff
Plug 'skywind3000/vim-quickui' " QuickUI

" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Completion framework
Plug 'hrsh7th/nvim-cmp'

" LSP completion source for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'

" Snippet completion source for nvim-cmp
Plug 'hrsh7th/cmp-vsnip'

" Other usefull completion sources
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'

" To enable more of the features of rust-analyzer, such as inlay hints and more!
Plug 'simrat39/rust-tools.nvim'

" Snippet engine
Plug 'hrsh7th/vim-vsnip'

" Optional
Plug 'Pocco81/DAPInstall.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'mfussenegger/nvim-dap-python'

"
" Color scheme used in the GIFs!
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'sbdchd/neoformat' " Autoformatter

Plug 'ThePrimeagen/vim-be-good' " Little games
 
Plug 'github/copilot.vim' " Copilot

Plug 'mhinz/vim-startify' " StartMenu

" Nya :3
"
" Plug 'coderthehannah/gittwee' "Hii omg


call plug#end()

set encoding=UTF-8

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nnoremap <F4> :!cargo run<CR>

nnoremap <F3> :!cargo run --target x86_64-pc-windows-gnu

nmap <F8> :TagbarToggle<CR>

let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled=1

set completeopt-=preview " For No Previews

let g:powerline_loaded = 1

let g:loaded_airline = 0

colorscheme minimalist 

" Neovide

let g:neovide_transparency=0.93
let g:neovide_floating_blur_amount_x = 2.0
let g:neovide_floating_blur_amount_y = 2.0
let g:neovide_scroll_animation_length = 0.4

let g:neovide_remember_window_size = v:true

let g:neovide_cursor_trail_size=0.8

let g:neovide_cursor_vfx_mode = "pixiedust"
