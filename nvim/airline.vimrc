let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = "\uE0C0"
let g:airline#extensions#tabline#right_sep = "\uE0C2"
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 0
set noshowmode
set cmdheight=1
let g:airline_theme='base16'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep="\uE0C0"
let g:airline_left_alt_sep='>'
let g:airline_right_sep="\uE0C2"
let g:airline_right_alt_sep='<'
