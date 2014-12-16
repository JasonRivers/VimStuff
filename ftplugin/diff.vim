setl fdm=expr fde=s:fde() fdt=s:fdt()

no <buffer> [[ zczkzo
no <buffer> ]] zczjzo
no <silent> <expr> <buffer> gf   s:goto()
no <silent> <expr> <buffer> gF   s:goto()
no <silent> <expr> <buffer> gd   s:goto()
no <silent> <expr> <buffer> gD   s:goto()
no <silent> <expr> <buffer> <cr> s:goto()

if exists('g:diff_ftplugin') | fini | en
let g:diff_ftplugin = 1

fu s:fde()
  let s = getline(v:lnum)
  retu s =~# '\v^(Index:|diff --git )' ? '>1' : 1
endf

fu s:fdt()
  let s = getline(v:foldstart)
  let s = substitute(s, '^Index:', '', 'g')
  let s = substitute(s, '^diff --git a/\(.*\) b/\1$', '\1', 'g')
  retu v:folddashes.' '.s.' '
endf

fu s:goto()
  let targetLine = 0
  let i = line('.')
  let reOffsetLine = '^@@ -\d\+,\d\+ +\(\d\+\),\d\+ @@$'
  wh 1
    if !i | retu | en
    let s = getline(i)
    if s =~# reOffsetLine | break | en
    if s =~# '^[ +]' | let targetLine += 1 | en
    let i -= 1
  endw
  let targetLine += substitute(s, reOffsetLine, '\1', '') - 1
  let reFile = '^+++ \([^\t]\+\).*$'
  wh 1
    if !i | retu | en
    let s = getline(i)
    if s =~# reFile | break | en
    let i -= 1
  endw
  let targetFile = substitute(s, reFile, '\1', '')
  retu ':e '.targetFile.'|norm! '.targetLine."gg\<cr>"
endf
