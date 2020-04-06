
"autocmd VimEnter * Defx

call defx#custom#option('_', {
      \ 'winwidth': 50,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 1,
      \ 'buffer_name': 'defxplorer',
      \ 'columns': 'icon:indent:icons:filename',
      \ 'toggle': 1,
      \ 'resume': 1,
      \ })

call defx#custom#column('icon', {
      \ 'directory_icon': '▸',
      \ 'opened_icon': '▾',
      \})



