setl ep=uncrustify\ -q\ --frag\ -l\ C\ -c\ ~/.vim/uncrustify/c.cfg cms=//%s

cal common#initBracketPairs('()[]{}')
ino <expr> <buffer> <bs>    common#hungryBackspaceWithBracketPairs(['()', '[]', '{}'])
ino <expr> <buffer> <cr>    <sid>enter()
ino <expr> <buffer> ;       common#maybeInsert(';')
ino <expr> <buffer> <space> <sid>space()

fu s:init()
  let a = getline(1, 256)
  let m = len(filter(copy(a), 'v:val =~ ") {"'))
  let n = len(filter(copy(a), 'v:val =~ "^\\s*{"'))
  let b:egyptian = m >= n
endf
cal s:init()
delf s:init

if exists('*g:Exec_c') | fini | en

fu g:Exec_c()
  !cd %:p:h && g++ -O3 %:t && ./a.out
endf

fu s:enter()
  let s = substitute(getline('.'), '//.*$', '', '')
  retu s =~# '\c^\s*[a-z\(].*[a-z\)]$' ? "\<end>".(b:egyptian ? ' ' : "\<cr>")."{\<cr>\<cr>}\<up>\<c-o>cc" : common#enter({'bracketPairs': ['()', '[]', '{}']})
endf

fu s:space()
  let l = getline('.')
  retu (l =~# '\v^\s*(if|for|foreach|while|switch)$' && len(l) == col('.') - 1) ? " ()\<left>" : ' '
endf
