setl cms=⍝%s kmp=apl sw=2 ts=2 sts=2 cfu=apl#complete
nn <buffer><silent> K           :cal apl#help()<cr>
nn <buffer><silent> <c-x><c-x>l :cal apl#localise()<cr>
let b:hashbang = '/usr/bin/env runapl'
cal common#initBracketPairs('()[]{}')
ino <expr> <buffer> <bs> common#hungryBackspaceWithBracketPairs(['()', '[]', '{}'])
ino <expr> <buffer> <cr> common#enter({'bracketPairs': ['()', '[]', '{}']})
