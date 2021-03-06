" vim match-up - even better matching
"
" Maintainer: Andy Massimino
" Email:      a@normed.space
"

if !exists('g:loaded_matchup') || !exists('b:did_ftplugin')
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

let b:match_midmap = [
      \ ['luaFunction', 'return'],
      \]
let b:undo_ftplugin .= '| unlet! b:match_midmap'

call matchup#util#append_match_words('--\[\(=*\)\[:]\1]')

let &cpo = s:save_cpo

" vim: fdm=marker sw=2

