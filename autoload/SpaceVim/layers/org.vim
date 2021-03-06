"=============================================================================
" org.vim --- org layer for SpaceVim
" Copyright (c) 2016-2021 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================


function! SpaceVim#layers#org#plugins() abort
  let plugins = []
  call add(plugins, ['SpaceVim/org-mode', {'merged' : 0}])
  return plugins
endfunction

function! SpaceVim#layers#org#config() abort
  
endfunction

function! SpaceVim#layers#org#health() abort
  call SpaceVim#layers#org#plugins()
  call SpaceVim#layers#org#config()
  return 1
endfunction
