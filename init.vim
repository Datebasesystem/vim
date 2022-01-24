"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2021 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg@outlook.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'

set wrap
set clipboard=unnamed
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_write_all_buffers = 1  " write all open buffers as if you would use :wa

let g:auto_save_events = ["InsertLeave", "TextChanged"]

" 设置默认进行大小写不敏感查找
set ignorecase
" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase

" 光标两边留几行
set scrolloff=10

" delete == x
" noremap x  <Del>

" 高亮当前列
set cursorcolumn!

" 80列后高亮
let &colorcolumn=join(range(81,999),',')
call SpaceVim#layers#core#statusline#toggle_mode('hi-characters-for-long-lines')


" """""""""""""""""""  gutentags related start """"""""""""""""""
" " let g:gutentags_define_advanced_commands = 1
" " let g:gutentags_trace = 1
" let $GTAGSLABEL='native'
" let $GTAGSCONF = "/usr/local/share/gtags/gtags.conf"
" " gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
" let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" let g:Tlist_Ctags_Cmd='/usr/bin/ctags'
" "
" " 所生成的数据文件的名称
" let g:gutentags_ctags_tagfile = '.tags'
"
" " 同时开启 ctags 和 gtags 支持：
" let g:gutentags_modules = []
" if executable('ctags')
"   let g:gutentags_modules += ['ctags']
" endif
" if executable('gtags-cscope') && executable('gtags')
"   let g:gutentags_modules += ['gtags_cscope']
" endif
"
" cs add "~/.cache/tags/flash-yifei.hyf-polar80-PolarDB_80/GTAGS"
" " 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
" let g:gutentags_cache_dir = expand('~/.cache/tags')
"
" " 配置 ctags 的参数，老的 Exuberant-ctags 不能有 --extra=+q，注意
" let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
" let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
" let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
"
" " 如果使用 universal ctags 需要增加下面一行，老的 Exuberant-ctags不能加下一行
" let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
"
" " 禁用 gutentags 自动加载 gtags 数据库的行为
" let g:gutentags_auto_add_gtags_cscope = 0
" """""""""""""""""""  gutentags related end """"""""""""""""""

" 花括号

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16  "设置开启16对括号匹配。
let g:rbpt_loadcmd_toggle = 0

" 高亮debug相关代码
" syntax match _debug_color /DBUG_.*/
highlight _debug_color guifg=#4f7c3b
highlight _my_error_color guifg=#eea293
highlight _mem_root guifg=#93ed93
match _debug_color /DBUG_.*/
2match _my_error_color /my_error.*/
3match _mem_root /.*mem_root.*/


" 禁用缓存
set noswapfile
