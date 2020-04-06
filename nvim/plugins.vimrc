call plug#begin('~/.nvim/plugged')
" Color Scheme
Plug 'https://github.com/morhetz/gruvbox.git'
" Menu Space bar
Plug 'liuchengxu/vim-which-key'
" Denite - Fuzzy Search
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kmnk/denite-dirmark'
Plug 'airblade/vim-rooter'
" Status Line
"Plug 'rbong/vim-crystalline'
"Plug 'itchyny/lightline.vim'
"Plug 'mengelbrecht/lightline-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Code 
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lsp'
Plug 'psf/black'
Plug 'preservim/nerdcommenter'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'Vimjas/vim-python-pep8-indent'
" Defx - File Explorer
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
" Git 
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'
Plug 'airblade/vim-gitgutter'
Plug 'kdheepak/lazygit.vim'
" Old Plugins
"Plug 'dunstontc/projectile.nvim'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'liuchengxu/vim-clap'
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'kassio/neoterm'
"Plug 'ncm2/float-preview.nvim'
"Plug 'moll/vim-bbye'
"Plug 'qpkorr/vim-bufkill'
"Plug 'jiangmiao/auto-pairs'
"Plug 'ap/vim-buftabline'
"Plug 'mcchrish/nnn.vim'
"Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'vimwiki/vimwiki'
"Plug 'liuchengxu/vista.vim'
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'jeetsukumaran/vim-pythonsense'
"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'
"Plug 'ryanoasis/vim-devicons'
call plug#end()
