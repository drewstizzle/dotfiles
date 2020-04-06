call plug#begin('~/.nvim/plugged')
Plug 'liuchengxu/vim-which-key'
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'neovim/nvim-lsp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'psf/black'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'airblade/vim-gitgutter'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'rbong/vim-crystalline'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-rooter'
"Plug 'kassio/neoterm'
"Plug 'moll/vim-bbye'
"Plug 'qpkorr/vim-bufkill'
"Plug 'mengelbrecht/lightline-bufferline'
"Plug 'itchyny/lightline.vim'
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
