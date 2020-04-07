" Define mappings
"
"
call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor',
    \'--ignore', 'hugo', '--ignore', '.cache', '--ignore', '.npm',
    \'--hidden', '--ignore', '.git', '--ignore', 'trash', '--ignore',
    \'venv', '--ignore','.vim', '--ignore', '.local', '--nogroup', '-g', ''])


"call denite#custom#option('default', 'prompt', 'λ', {
call denite#custom#option('_', {
      \ 'floating_preview': v:true,
      \ 'prompt':'λ',
      \ 'preview_width': 10,
      \ 'split': 'floating',
      \ 'winheight': 20,
      \ 'winrow': 20,
      \ 'wincol': 20,
      \ 'winwidth': 140,
      \ })

call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/*', '*.pyc', 'node_modules/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/', '*.png', '.cache/',
      \   'trash/', '*.npm/*', 'hugo/'])



