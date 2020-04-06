
" Leader Key - Space
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
let g:which_key_map =  {}

" Required Plugins:
" None
let g:which_key_map.b = { 
    \ 'name': 'buffer',
    \ 'd' : ['bd'        , 'delete-buffer']    ,
    \ 'l' : ['bnext'     , 'next-buffer']      ,
    \ 'h' : ['bprevious' , 'previous-buffer']  ,
    \ '/' : [':Denite buffer' , 'search--buffer-denite']       ,
    \ }

" Required Plugins:
" None
let g:which_key_map.w = { 
    \ 'name': 'window'   ,
    \ 'd' : ['<C-w>c'    , 'delete-window']      ,
    \ 'h' : ['<C-w>h'    , 'move-left- window']  ,
    \ 'j' : ['<C-w>j'    , 'move-right-window']  ,
    \ 'k' : ['<C-w>k'    , 'move-top-window']    ,
    \ 'l' : ['<C-w>l'    , 'move-right-window']  ,
    \ 's' : ['split'     , 'horizontal-split']   ,
    \ 'v' : ['vsplit'    , 'vertical-split']     ,
    \ }

" Required Plugins:
" coc
let g:which_key_map.c = { 
    \ 'name': 'code'   ,
    \ 'd' : ['<Plug>(coc-definition)'               , 'coc-definition']      ,
    \ 'r' : ['<Plug>(coc-references)'               , 'coc-references']      ,
    \ 'c' : ['<Plug>NERDCommenterComment'           , 'comment line(s)']      ,
    \ 'p' : ['<Plug>NERDCommenterUnComment'         , 'uncomment line(s)']      ,
    \ }

" Required Plugins:
" defx
let g:which_key_map.f = { 
    \ 'name': 'file'   ,
    \ 'o' : ['Defx'    , 'open-file-tree']      ,
    \ '/' : [':Denite -start-filter file/rec'     , 'search-files-denite']      ,
    \ }


" Unable to figure out how to separate the mapping and function
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Defx Key bindings
autocmd FileType defx call s:defx_my_settings()
	function! s:defx_my_settings() abort
	  " Define mappings
	  nnoremap <silent><buffer><expr> <CR>
	  \ defx#do_action('drop')
	  nnoremap <silent><buffer><expr> c
	  \ defx#do_action('copy')
	  nnoremap <silent><buffer><expr> m
	  \ defx#do_action('move')
	  nnoremap <silent><buffer><expr> p
	  \ defx#do_action('paste')
	  nnoremap <silent><buffer><expr> l
	  \ defx#do_action('drop')
	  nnoremap <silent><buffer><expr> v
	  \ defx#do_action('drop', 'vsplit')
	  nnoremap <silent><buffer><expr> s
	  \ defx#do_action('drop', 'split')
	  nnoremap <silent><buffer><expr> P
	  \ defx#do_action('open', 'pedit')
	  nnoremap <silent><buffer><expr> o
	  \ defx#do_action('open_or_close_tree')
	  nnoremap <silent><buffer><expr> K
	  \ defx#do_action('new_directory')
	  nnoremap <silent><buffer><expr> N
	  \ defx#do_action('new_file')
	  nnoremap <silent><buffer><expr> M
	  \ defx#do_action('new_multiple_files')
	  nnoremap <silent><buffer><expr> C
	  \ defx#do_action('toggle_columns',
	  \                'mark:indent:icon:filename:type:size:time')
	  nnoremap <silent><buffer><expr> S
	  \ defx#do_action('toggle_sort', 'time')
	  nnoremap <silent><buffer><expr> d
	  \ defx#do_action('remove')
	  nnoremap <silent><buffer><expr> r
	  \ defx#do_action('rename')
	  nnoremap <silent><buffer><expr> !
	  \ defx#do_action('execute_command')
	  nnoremap <silent><buffer><expr> x
	  \ defx#do_action('execute_system')
	  nnoremap <silent><buffer><expr> yy
	  \ defx#do_action('yank_path')
	  nnoremap <silent><buffer><expr> .
	  \ defx#do_action('toggle_ignored_files')
	  nnoremap <silent><buffer><expr> ;
	  \ defx#do_action('repeat')
	  nnoremap <silent><buffer><expr> h
	  \ defx#do_action('cd', ['..'])
	  nnoremap <silent><buffer><expr> ~
	  \ defx#do_action('cd')
	  nnoremap <silent><buffer><expr> q
	  \ defx#do_action('quit')
"	  nnoremap <silent><buffer><expr> <Space>
"	  \ defx#do_action('toggle_select') . 'j'
	  nnoremap <silent><buffer><expr> *
	  \ defx#do_action('toggle_select_all')
	  nnoremap <silent><buffer><expr> j
	  \ line('.') == line('$') ? 'gg' : 'j'
	  nnoremap <silent><buffer><expr> k
	  \ line('.') == 1 ? 'G' : 'k'
	  nnoremap <silent><buffer><expr> <C-l>
	  \ defx#do_action('redraw')
	  nnoremap <silent><buffer><expr> <C-g>
	  \ defx#do_action('print')
	  nnoremap <silent><buffer><expr> cd
	  \ defx#do_action('change_vim_cwd')
	endfunction

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

