setl fdm=marker fdt=<sid>fdt()

inorea fn function
inorea ret return

cal common#initBracketPairs('()[]{}')
ino <expr> <buffer> <bs> common#hungryBackspaceWithBracketPairs(['()', '[]', '{}'])
ino <expr> <buffer> <cr> common#enter({'splitStrings': 1, 'bracketPairs': ['()', '[]', '{}']})
ino <expr> <buffer> ;    common#maybeInsert(';')

if exists('g:javascript_ftplugin') | fini | en
let g:javascript_ftplugin = 1

fu s:fdt()
  let s = getline(v:foldstart)
  let s = substitute(s, '^\s*\(/\/\s*\)\=', '', '')
  let s = substitute(s, '\s*\(\/\/\s*\)\={{{\s*[0-9]*\s*$', '', '')
  retu v:folddashes.' '.s.' '
endf
