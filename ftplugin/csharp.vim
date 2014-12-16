setl cms=//\ %s sw=2 ts=2 sts=2

cal common#initBracketPairs('()[]{}')
ino <expr> <buffer> <bs>    common#hungryBackspaceWithBracketPairs(['()', '[]', '{}'])
ino <expr> <buffer> <cr>    <sid>enter()
ino <expr> <buffer> <space> <sid>space()

if exists('*g:Exec_cs') | fini | en

fu g:Exec_cs()
  !dmcs -pkg:gtk-sharp-2.0 % && mono %:r.exe
endf

fu s:enter()
  retu getline('.') =~# '\c^\s*.*[a-z\)]$' ? "\<end>\<cr>{\<cr>\<cr>}\<up>\<c-o>cc" : common#enter({'splitStrings': 1, 'bracketPairs': ['()', '[]', '{}']})
endf

fu s:space()
  let l = getline('.')
  retu (l =~# '\v^\s*(if|for|foreach|while|switch)$' && len(l) == col('.') - 1) ? " ()\<left>" : ' '
endf
