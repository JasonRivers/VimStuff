setl fo+=ro sw=2 ts=2 mp=coffee\ -abc\ %

let b:hashbang = '/usr/bin/env coffee'

cal common#initBracketPairs('()[]{}')
ino <expr> <buffer> <bs> common#hungryBackspaceWithBracketPairs(['()', '[]', '{}'])
ino <expr> <buffer> <cr> common#enter({'bracketPairs': ['()', '[]', '{}']})

nn <leader>c :.CoffeeCompile<cr>
vn <leader>c :CoffeeCompile<cr>gv
