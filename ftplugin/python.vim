setl nocin nosi indk+=0:),0:],0:} inde=<sid>ind() sw=4 ts=4 sts=4 et

cal common#initBracketPairs('()[]{}')
let b:hashbang = '/usr/bin/env python3'

ino <expr> <buffer> <bs> common#hungryBackspaceWithBracketPairs(['()', '[]', '{}'])
ino <expr> <buffer> <cr> <sid>enter()

inorea <buffer> <silent> true  True
inorea <buffer> <silent> false False
inorea <buffer> <silent> null  None
inorea <buffer> <silent> throw raise
inorea <buffer> <silent> catch except
inorea <buffer> <silent> isnt !=

vn <buffer> <silent> <cr> :py eval(compile('\n'.join(vim.current.range),'','exec'),globals())<cr>

ino <buffer> ++ <space>+=<space>1

if exists('g:python_ftplugin') | fini | en
let g:python_ftplugin = 1

fu s:enter()
  let col = getpos('.')[2] - 2
  let s = getline('.')[:max([col, 0])]
  let r = s =~# '^\s*\(def\|if\|else\|elif\|for\|while\|with\|class\|try\|except\|finally\)\>' && s !~# ':\s*$' ? ':' : ''
  retu r.common#enter({'bracketPairs': ['()', '[]', '{}']})
endf

fu s:ind()
  let lnum = prevnonblank(v:lnum - 1)
  if !lnum | retu 0 | en
  let r = indent(lnum)
  let flag = 0
  if getline(lnum) =~# ':\s*$'
    let r += &sw
    let flag = 1
  elseif getline(lnum) =~# '[(\[{]\s*$'
    let r += 2 * &sw
    let flag = 1
  en
  if getline(v:lnum) =~# '^\s*[)\]}]'
    let r -= 2 * &sw
    let flag = 1
  en
  retu flag ? r : -1
endf
