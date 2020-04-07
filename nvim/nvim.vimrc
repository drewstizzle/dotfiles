 " General Configuration
set nu                "set number column
set shiftwidth=4      "how many columns text is indented with the reindent operations (<< and >>) 
set expandtab         "hitting Tab in insert mode will produce the appropriate number of spaces.
set tabstop=4         "tell vim how many columns a tab counts for.
set softtabstop=4     "number of spaces in tab when editing
set splitright
set splitbelow
set nocompatible
filetype plugin on
set background=dark
set mouse=a
set showtabline=2

" Color Scheme
colorscheme gruvbox
let g:gruvbox_contrast_dark='dark'

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
"Turn on syntax highlighting
syntax enable
highlight clear SignColumn
set timeoutlen=500
set hlsearch
hi Search ctermfg=DarkGreen


" TODO: list stuff
