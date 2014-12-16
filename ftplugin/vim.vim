setl sw=2 sts=2 fdm=marker fdt=<sid>fdt()

cal common#initBracketPairs('()[]{}')
ino <expr> <buffer> <bs> common#hungryBackspaceWithBracketPairs(['()', '[]', '{}'])
ino <expr> <buffer> <cr> common#enter({'bracketPairs': ['()', '[]', '{}']})

no <expr> <buffer> K <sid>help()

if exists('*g:Exec_vim') | fini | en

fu g:Exec_vim()
  so %
endf

fu s:fdt()
  let s = getline(v:foldstart)
  let s = substitute(s, '^\s*function!\?\s*\(\w\+#\)*', '', '')
  let s = substitute(s, '\s*\("\s*\)\?{\{3}\s*\d*\s*$', '', '')
  retu v:folddashes.s
endf

fu s:help()
  let w = expand('<cword>')
  let s = synIDattr(get(synstack(line('.'), col('.')), -1), 'name')
  if s ==# 'vimFuncName'
    let w .= '('
  elseif s ==# 'vimOption'
    let w = "'".w
  elseif s ==# 'vimCommand'
    let w = ':'.w
  en
  retu ':h '.w."\<cr>"
endf
