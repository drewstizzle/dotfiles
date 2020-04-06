" Define mappings
"
"
call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor',
    \'--ignore', 'hugo', '--ignore', '.cache', '--ignore', '.npm',
    \'--hidden', '--ignore', '.git', '--ignore', 'trash', '--ignore',
    \'venv', '--ignore','.vim', '--ignore', '.local', '--nogroup', '-g', ''])

call denite#custom#option('_', {
      \ 'prompt':'λ',
      \ 'floating_preview': v:true,
      \ 'preview_width': 10,
      \ 'split': 'floating',
      \ 'winheight': 40*winheight(0)/100,
      \ 'winrow': 20*winheight(0)/100,
      \ 'wincol': &columns/8,
      \ 'winwidth': &columns / 2 + &columns/4 ,
      \ })


" Add custom menus
let s:menus = {}

let s:menus.zsh = {
	\ 'description': 'Edit your import zsh configuration'
	\ }
let s:menus.zsh.file_candidates = [
	\ ['zshrc', '~/./zshrc'],
	\ ]

let s:menus.my_commands = {
	\ 'description': 'Example commands'
	\ }
let s:menus.my_commands.command_candidates = [
	\ ['Split the window', 'vnew'],
	\ ['Open zsh menu', 'Denite menu:zsh'],
	\ ['Format code', 'FormatCode', 'go,python'],
	\ ]

call denite#custom#var('menu', 'menus', s:menus)
