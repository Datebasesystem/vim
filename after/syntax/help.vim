" helpHeadline do not include # which is used in 
" SpaceVim layer name
syn match helpHeadline "^[-A-Z .][-A-Z0-9 .()_#]*\ze\(\s\+\*\|$\)"

" 高亮debug相关代码
syn keyword _debug /DBUG_.*/
highlight _debug guifg=#b6d7a8

